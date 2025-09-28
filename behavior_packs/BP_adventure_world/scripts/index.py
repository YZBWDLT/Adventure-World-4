# 使用命令或附加包难以实现的内容，使用脚本来实现
# 将使用 SAPI 和 ModAPI 同时尝试实现

import math
from minecraft import *

# 当玩家的御风珠砸中木板后，则传送玩家
def projectileHitBlockFunction(event):
    # type: (ProjectileHitBlockAfterEvent) -> None
    """御风珠击中的方块信息"""
    blockInfo = event.getBlockHit()
    """御风珠的位置"""
    locE = event.location
    """扔出御风珠的玩家"""
    player = event.source.asPlayer()

    # 如果：扔出的玩家真实存在，且为玩家类型；御风珠扔中了任意一种木板，则……
    if (
        player and player.typeId == "minecraft:player"
        and event.projectile.typeId == "aw:wind_pearl"
        and "planks" in blockInfo.block.typeId
    ):
        """传送信息"""
        teleportInfo = {
            "Down": {"x": locE.x, "y": locE.y - 3, "z": locE.z},              # 如果扔中底面，则传送到投中位置的下方 3 格
            "Up": {"x": locE.x, "y": locE.y + 1, "z": locE.z},                # 如果扔中顶面，则传送到投中位置的上方 1 格
            "North": {"x": locE.x, "y": locE.y - 0.5, "z": locE.z - 0.7},     # 如果扔中北面，则传送到投中位置北边 0.7 格，下方 0.5 格
            "South": {"x": locE.x, "y": locE.y - 0.5, "z": locE.z + 0.7},     # 如果扔中南面，则传送到投中位置南边 0.7 格，下方 0.5 格
            "West": {"x": locE.x - 0.7, "y": locE.y - 0.5, "z": locE.z},      # 如果扔中西面，则传送到投中位置西边 0.7 格，下方 0.5 格
            "East": {"x": locE.x + 0.7, "y": locE.y - 0.5, "z": locE.z},      # 如果扔中东面，则传送到投中位置东边 0.7 格，下方 0.5 格
        }
        # 传送玩家
        player.teleport(teleportInfo[blockInfo.face])
        # 为玩家播放传送音效
        player.playSound("mob.endermen.portal")
world.afterEvents.projectileHitBlock.subscribe(projectileHitBlockFunction)

# 当玩家使用弓箭击中骷髅或骷髅王后，触发对应效果
def projectileHitEntityFunction(event):
    # type: (ProjectileHitEntityAfterEvent) -> None
    # 判断为玩家用箭击中实体
    print(event.getEntityHit().entity.typeId, event.source.typeId, event.projectile.typeId)
    if (
        event.source and event.source.typeId == "minecraft:player"
        and event.projectile.typeId == "minecraft:arrow"
    ):
        immediateKill = ["minecraft:skeleton", "minecraft:stray"]
        dealsExtraDamage = ["aw:skeleton_king"]
        player = event.source
        hitEntity = event.getEntityHit().entity

        # 击中骷髅或流浪者后，直接秒杀
        if hitEntity and hitEntity.typeId in immediateKill:
            hitEntity.applyDamage(1000, {"cause": "entityAttack", "damagingEntity": player})
            player.runCommand("scoreboard players add skeletonShotAmount data 1")
            event.projectile.remove() # [独有] 防止箭穿过骷髅
        # 击中骷髅王后，施加额外伤害
        elif hitEntity and hitEntity.typeId in dealsExtraDamage:
            hitEntity.applyDamage(5, {"cause": "entityAttack", "damagingEntity": player})
            event.projectile.remove() # [独有] 防止箭穿过骷髅王
world.afterEvents.projectileHitEntity.subscribe(projectileHitEntityFunction)

# 当玩家使用物品后，则触发函数
def itemUseFunction(event):
    # type: (ItemUseAfterEvent) -> None
    usableItems = ["aw:toggle_wave", "aw:kill_monsters", "aw:acoustic_stone_crystal", "aw:quit", "aw:spectate",]
    if event.itemStack.typeId in usableItems:
        event.source.runCommand("function aw/items/{}".format(event.itemStack.typeId.split(":")[1]))
world.afterEvents.itemUse.subscribe(itemUseFunction)

# 当玩家使用完毕物品后，则触发函数
def itemCompleteUseFunction(event):
    # type: (ItemCompleteUseAfterEvent) -> None
    usableItems = ["aw:potion_health", "aw:potion_growth", "aw:potion_thrill", "aw:potion_turtle", "aw:potion_rebirth", "aw:potion_hibernation", "aw:potion_purification", "minecraft:apple"]
    if event.itemStack.typeId in usableItems:
        event.source.runCommand("function aw/items/{}".format(event.itemStack.typeId.split(":")[1]))
world.afterEvents.itemCompleteUse.subscribe(itemCompleteUseFunction)

# 当玩家击杀怪物后，则触发函数
def entityDieFunction(event):
    # type: (EntityDieAfterEvent) -> None
    """击杀者（预期为玩家）"""
    killer = event.damageSource.damagingEntity
    deadEntity = event.deadEntity
    # 当击杀者为玩家并且死亡实体的种族为monster时，执行函数
    if (
        killer and killer.typeId == "minecraft:player"
        and deadEntity.runCommand("execute if entity @s[family=monster]").successCount > 0
    ):
        killer.runCommand("function aw/entities/player/kill_monster")
world.afterEvents.entityDie.subscribe(entityDieFunction)

# 当玩家或烈焰王血量变化后，将其血量同步到health记分板上
"""要检查的实体"""
entityTypes = ["minecraft:player", "aw:blaze_king", "minecraft:evocation_illager"]
def getMaxHealth(entity):  # (!) 目前仍存在问题
    # type: (Entity) -> float
    """获取实体的最大血量值"""
    """该实体的血量组件"""
    entityHealth = entity.getComponent("minecraft:health") # type: EntityHealthComponent
    return entityHealth.effectiveMax
def printHealth(entity, healthValue):
    # type: (Entity, float) -> None
    """将实体血量打印到 health 记分板上"""
    """实体血量更改后的血量（整数型）"""
    healthValueInt = int(math.ceil(healthValue))
    entity.runCommand("scoreboard players set @s health {}".format(healthValueInt))
def entitySpawnFunction(event):
    # type: (EntitySpawnAfterEvent) -> None
    """刚生成的实体"""
    entity = event.entity
    # 若实体在允许的实体列表中，则打印实体血量到health记分板上
    if entity.typeId in entityTypes:
        printHealth(entity, getMaxHealth(entity))
world.afterEvents.entitySpawn.subscribe(entitySpawnFunction)
def entityHealthChangedFunction(event):
    # type: (EntityHealthChangedAfterEvent) -> None

    """血量更改的实体"""
    entity = event.entity
    # 若实体在允许的实体列表中，则打印实体血量到health记分板上
    if entity.typeId in entityTypes:
        entityMaxHealth = getMaxHealth(entity)  # 该实体最大血量值
        healthValue = event.newValue            # 该实体当前实际的血量值，控制在 0 ~ max 之间
        if healthValue > entityMaxHealth: healthValue = entityMaxHealth
        elif healthValue < 0: healthValue = 0
        printHealth(entity, healthValue)
world.afterEvents.entityHealthChanged.subscribe(entityHealthChangedFunction)

# 当玩家受伤后，触发函数
def entityHurtFunction(event):
    # type: (EntityHurtAfterEvent) -> None
    if (event.hurtEntity.typeId == "minecraft:player"):
        event.hurtEntity.runCommand("function aw/entities/player/hurt")
world.afterEvents.entityHurt.subscribe(entityHurtFunction)
