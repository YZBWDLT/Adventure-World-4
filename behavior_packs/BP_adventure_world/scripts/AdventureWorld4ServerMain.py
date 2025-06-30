# -*- coding: utf-8 -*-
# 使用命令或附加包难以实现的内容，使用脚本来实现
# 将使用 SAPI 和 ModAPI 同时尝试实现

import mod.server.extraServerApi as serverApi
import sapi
import math

ServerSystem = serverApi.GetServerSystemCls()
"""继承的系统，类似于SAPI的world模块"""
compFactory = serverApi.GetEngineCompFactory()
"""可用的所有组件，类似于SAPI的各种类（方块、实体、物品等）的方法"""
defaultNamespace = serverApi.GetEngineNamespace()
"""默认的服务端引擎命名空间（用于事件订阅）"""
defaultSystemName = serverApi.GetEngineSystemName()
"""默认的服务端引擎名称（用于事件订阅）"""
levelId = serverApi.GetLevelId() # type: str
"""当前地图的levelId"""

# ========== 系统 ==========
class AdventureWorld4Server(ServerSystem):

    def __init__(self, namespace, systemName):
        super(AdventureWorld4Server, self).__init__(namespace, systemName)
        self.subscribe()

    # ===========================================================================

    def subscribe(self): # type: () -> None
        self.ListenForEvent(defaultNamespace, defaultSystemName, "ProjectileDoHitEffectEvent", self, self.projectileDoHit)  # type: ignore
        self.ListenForEvent(defaultNamespace, defaultSystemName, "ItemUseAfterServerEvent", self, self.itemUseAfter)        # type: ignore
        self.ListenForEvent(defaultNamespace, defaultSystemName, "ActorUseItemServerEvent", self, self.actorUseItem)        # type: ignore
        self.ListenForEvent(defaultNamespace, defaultSystemName, "MobDieEvent", self, self.mobDie)                          # type: ignore
        self.ListenForEvent(defaultNamespace, defaultSystemName, "AddEntityServerEvent", self, self.addEntity)              # type: ignore
        self.ListenForEvent(defaultNamespace, defaultSystemName, "HealthChangeServerEvent", self, self.healthChange)        # type: ignore

    def unsubscribe(self): # type: () -> None
        self.UnListenAllEvents()
    
    def projectileDoHit(self, event): # type: ( dict ) -> None
        if event["hitTargetType"] == "Block":
            self.projectileHitBlock(sapi.ProjectileHitBlockAfterEvent(event))
        else:
            self.projectileHitEntity(sapi.ProjectileHitEntityAfterEvent(event))
    
    def itemUseAfter(self, event): # type: ( dict ) -> None
        self.itemUse(sapi.ItemUseAfterEvent(event))
    
    def actorUseItem(self, event): # type: ( dict ) -> None
        self.itemCompleteUse(sapi.ItemCompleteUseAfterEvent(event))
    
    def mobDie(self, event): # type: ( dict ) -> None
        self.entityDie(sapi.EntityDieAfterEvent(event))

    def addEntity(self, event): # type: ( dict ) -> None
        self.entitySpawn(sapi.EntitySpawnAfterEvent(event))
    
    def healthChange(self, event): # type: ( dict ) -> None
        self.entityHealthChanged(sapi.EntityHealthChangedAfterEvent(event))

    # ===========================================================================

    # 当玩家的御风珠砸中木板后，则传送玩家
    def projectileHitBlock(self, event): # type: ( sapi.ProjectileHitBlockAfterEvent ) -> None

        # 御风珠击中的方块信息
        blockInfo = event.getBlockHit()
        # 御风珠的位置
        locE = event.location
        # 扔出御风珠的玩家
        player = event.source

        # 如果：扔出的玩家真实存在，且为玩家类型；御风珠扔中了任意一种木板，则……
        if (
            player.typeId == "minecraft:player"
            and event.projectile.typeId == "aw:wind_pearl"
            and "planks" in blockInfo.block.typeId
        ):
            # 传送信息
            teleportInfo = {
                "Down": sapi.Vector3( locE.x, locE.y - 3, locE.z ),              ## 如果扔中底面，则传送到投中位置的下方 3 格
                "Up": sapi.Vector3( locE.x, locE.y + 1, locE.z ),                ## 如果扔中顶面，则传送到投中位置的上方 1 格
                "North": sapi.Vector3( locE.x, locE.y - 0.5, locE.z - 0.7 ),     ## 如果扔中北面，则传送到投中位置北边 0.7 格，下方 0.5 格
                "South": sapi.Vector3( locE.x, locE.y - 0.5, locE.z + 0.7 ),     ## 如果扔中南面，则传送到投中位置南边 0.7 格，下方 0.5 格
                "West": sapi.Vector3( locE.x - 0.7, locE.y - 0.5, locE.z ),      ## 如果扔中西面，则传送到投中位置西边 0.7 格，下方 0.5 格
                "East": sapi.Vector3( locE.x + 0.7, locE.y - 0.5, locE.z ),      ## 如果扔中东面，则传送到投中位置东边 0.7 格，下方 0.5 格
            }
            # 传送玩家
            player.teleport( teleportInfo[blockInfo.face] )
            # 为玩家播放传送音效
            player.runCommand( "playsound mob.endermen.portal @s" )
    
    # 当玩家使用弓箭击中骷髅或骷髅王后，触发对应效果
    def projectileHitEntity(self, event): # type: ( sapi.ProjectileHitEntityAfterEvent ) -> None
        if (
            event.source.typeId == "minecraft:player"
            and event.projectile.typeId == "minecraft:arrow"
        ):
            immediateKill = ["minecraft:skeleton", "minecraft:stray"]
            dealsExtraDamage = ["aw:skeleton_king"]
            player = event.source
            hitEntity = event.getEntityHit().entity

            # 击中骷髅或流浪者后，直接秒杀
            if ( hitEntity.typeId in immediateKill ):
                hitEntity.applyDamage( 1000, { "cause": "entityAttack", "damagingEntity": player } )
            # 击中骷髅王后，施加额外伤害
            elif ( hitEntity.typeId in dealsExtraDamage ):
                hitEntity.applyDamage( 5, { "cause": "entityAttack", "damagingEntity": player } )

    # 当玩家使用物品后，则触发函数
    def itemUse(self, event): # type: ( sapi.ItemUseAfterEvent ) -> None
        usableItems = [
            "aw:toggle_wave",
            "aw:summon_monsters",
            "aw:kill_monsters",
            "aw:acoustic_stone_crystal",
        ]
        if event.itemStack.typeId in usableItems:
            event.source.runCommand( "function aw/items/{}".format( event.itemStack.typeId.split(":")[1] ) )

    # 当玩家使用完毕物品后，则触发函数
    def itemCompleteUse(self, event): # type: ( sapi.ItemCompleteUseAfterEvent ) -> None
        usableItems = [
            "aw:potion_health",
            "aw:potion_growth",
            "aw:potion_thrill",
            "aw:potion_turtle",
            "aw:potion_rebirth",
            "aw:potion_hibernation",
            "aw:potion_purification",
        ]
        if event.itemStack.typeId in usableItems:
            event.source.runCommand( "function aw/items/{}".format( event.itemStack.typeId.split(":")[1] ) )

    # 当玩家击杀怪物时，执行函数
    def entityDie(self, event): # type: ( sapi.EntityDieAfterEvent ) -> None
        # 击杀者（预期为玩家）
        killer = event.damageSource.damagingEntity
        deadEntity = event.deadEntity
        # 当击杀者为玩家并且死亡实体的种族为monster时，执行函数
        if (
            killer.typeId == "minecraft:player"
            and deadEntity.runCommand("execute if entity @s[family=monster]")
        ):
            killer.runCommand("function aw/entities/player/kill_monster")

    # 当玩家或烈焰王血量变化后，将其血量同步到health记分板上
    def entitySpawn(self, event): # type: ( sapi.EntitySpawnAfterEvent ) -> None
        # 刚生成的实体
        entity = event.entity
        # 该实体的血量最大值
        entityMaxHealth = entity.getHealthComponent().effectiveMax
        # 此处是为了防止某些实体无血量而导致报错
        if entityMaxHealth != None:
            printHealth( entity, entityMaxHealth )
    def entityHealthChanged(self, event): # type: ( sapi.EntityHealthChangedAfterEvent ) -> None
        printHealth( event.entity, event.newValue )

def printHealth( entity, healthValue ): # type: ( sapi.Entity, float ) -> None

    # 要检查的实体
    entityTypes = [ "minecraft:player", "aw:blaze_king" ]

    # 若实体在允许的实体列表中，则打印实体血量到health记分板上
    if entity.typeId in entityTypes:
        healthValueInt = int(math.ceil(healthValue))
        entity.runCommand("scoreboard players set @s health {}".format(healthValueInt))
