# -*- coding: utf-8 -*-
# 使用命令或附加包难以实现的内容，使用脚本来实现
# 将使用 SAPI 和 ModAPI 同时尝试实现

import mod.server.extraServerApi as serverApi
from sapi import Entity

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

    # ========== 事件（beforeEvents & afterEvents） ==========

    def subscribe(self):
        self.ListenForEvent(defaultNamespace, defaultSystemName, "ProjectileDoHitEffectEvent", self, self.projectileHitBlock)
        self.ListenForEvent(defaultNamespace, defaultSystemName, "ProjectileDoHitEffectEvent", self, self.projectileHitEntity)
        self.ListenForEvent(defaultNamespace, defaultSystemName, "ItemUseAfterServerEvent", self, self.itemUse)
        self.ListenForEvent(defaultNamespace, defaultSystemName, "MobDieEvent", self, self.entityDie)

    def unsubscribe(self):
        self.UnListenAllEvents()
    
    def projectileHitBlock(self, event):
        # type: ( dict ) -> None
        """ 基于中国版事件 ProjectileDoHitEffectEvent。等效于 SAPI 的 world.afterEvents.projectileHitBlock.subscribe()。 """
        if event["hitTargetType"] == "BLOCK":
            # ----- 获取变量 -----
            blockLocation = (event["blockPosX"], event["blockPosY"], event["blockPosZ"])                # 方块位置
            location = (event["x"], event["y"], event["z"])                                             # 击中位置
            projectile = Entity( event["id"] )                                                          # 投掷物
            source = Entity( compFactory.CreateBulletAttributes(projectile).GetSourceEntityId() )       # 投掷者
            dimension = compFactory.CreateDimension(projectile).GetEntityDimensionId()                  # 击中维度
            blockHitFace = event["hitFace"]                                                             # 击中面
            blockTypeId = compFactory.CreateBlockInfo(levelId).GetBlockNew(blockLocation, dimension)["name"]    # 方块 ID

            # ----- 执行函数 -----
            self.teleportPlayerToPlanks( blockTypeId, location, source, projectile, blockHitFace )
    
    def projectileHitEntity(self, event):
        # type: ( dict ) -> None
        """ 基于中国版事件 ProjectileDoHitEffectEvent。等效于 SAPI 的 world.afterEvents.projectileHitEntity.subscribe()。 """
        if event["hitTargetType"] == "ENTITY":
            projectile = Entity( event["id"] )                                                          # 投掷物
            dimension = compFactory.CreateDimension(projectile).GetEntityDimensionId()                  # 击中维度
            source = Entity( compFactory.CreateBulletAttributes(projectile).GetSourceEntityId() )       # 投掷者

            # ----- 执行函数 -----
            self.playerDamageSkeleton()

    def entityDie(self, event):
        # type: ( dict ) -> None
        """ 基于中国版事件 MobDieEvent。等效于 SAPI 的 world.afterevents.entityDie.subscribe()。 """
        # --- 获取变量 ---
        damagingEntity = Entity( event["attacker"] )
        # cause = event["cause"]
        deadEntity = Entity( event["id"] )

        # --- 执行函数 ---
        self.playerKilledMonster( damagingEntity, deadEntity )

    def itemUse(self, event):
        # type: ( dict ) -> None
        """ 基于中国版事件 ItemUseAfterServerEvent。等效于 SAPI 的 world.afterevents.itemUse.subscribe()。 """
        # --- 获取变量 ---
        source = Entity( event["entityId"] )
        itemStack = event["itemDict"]

        # --- 执行函数 ---
        self.playerUseItem( itemStack, source )

    # ========== 地图功能实现 ==========

    # 当玩家的御风珠砸中木板后，则传送玩家
    def teleportPlayerToPlanks( self, blockTypeId, locE, player, projectile, blockFace ):
        # type: ( str, tuple[float, float, float], Entity, Entity, int ) -> None

        # 如果：扔出的玩家真实存在，且为玩家类型；御风珠扔中了任意一种木板，则……
        if (
            player.typeId == "minecraft:player"
            and projectile.typeId == "aw:wind_pearl"
            and blockTypeId.find("planks") != -1
        ):
            # 传送信息
            teleportInfo = {
                0: ( locE[0], locE[1] - 3, locE[2] ),           ## 如果扔中底面，则传送到投中位置的下方 3 格
                1: ( locE[0], locE[1] + 1, locE[2] ),           ## 如果扔中顶面，则传送到投中位置的上方 1 格
                2: ( locE[0], locE[1] - 0.5, locE[2] - 0.7 ),   ## 如果扔中北面，则传送到投中位置北边 0.7 格，下方 0.5 格
                3: ( locE[0], locE[1] - 0.5, locE[2] + 0.7 ),   ## 如果扔中南面，则传送到投中位置南边 0.7 格，下方 0.5 格
                4: ( locE[0] - 0.7, locE[1] - 0.5, locE[2] ),   ## 如果扔中西面，则传送到投中位置西边 0.7 格，下方 0.5 格
                5: ( locE[0] + 0.7, locE[1] - 0.5, locE[2] ),   ## 如果扔中东面，则传送到投中位置东边 0.7 格，下方 0.5 格
            }
            # 传送玩家
            player.teleport( teleportInfo[blockFace] )
            # 为玩家播放传送音效
            player.runCommand( "playsound mob.endermen.portal @s" )

    # 当玩家使用自定义物品时，执行函数
    def playerUseItem(self, itemStack, source):
        # type: ( dict, Entity ) -> None
        usableItems = [ "aw:toggle_wave", "aw:summon_monsters", "aw:kill_monsters", "aw:acoustic_stone_crystal", "aw:potion_health", "aw:potion_growth", "aw:potion_thrill", "aw:potion_turtle", "aw:potion_rebirth", "aw:potion_hibernation", "aw:potion_purification",  ]
        if itemStack["newItemName"] in usableItems:
            source.runCommand( "function aw/items/{}".format(itemStack["newItemName"].split(":")[1]) )

    # 当玩家击杀怪物时，执行函数
    def playerKilledMonster( self, killer, deadEntity ):
        # type: ( Entity, Entity ) -> None
        if (
            killer.typeId == "minecraft:player"
            and deadEntity.runCommand("execute if entity @s[family=monster]")
        ):
            killer.runCommand( "function aw/entities/player/kill_monster" )

    def playerDamageSkeleton( self, source, projectile, hitEntity ):
        # type: ( Entity, Entity, Entity ) -> None
        if (
            source.typeId == "minecraft:player"
            and projectile.typeId == "minecraft:arrow"
        ):
            immediateKill = ["minecraft:skeleton", "minecraft:stray"]
            dealsExtraDamage = ["aw:skeleton_king"]
            # 击中骷髅或流浪者后，直接秒杀
            if hitEntity.typeId in immediateKill:
                hitEntity.applyDamage( 1000, { "cause": "entity_attack", "damagingEntity": source } )
            # 击中骷髅王后，施加额外伤害
            elif hitEntity.typeId in dealsExtraDamage:
                hitEntity.applyDamage( 5, { "cause": "entity_attack", "damagingEntity": source } )

