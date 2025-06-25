# -*- coding: utf-8 -*-
# 使用命令或附加包难以实现的内容，使用脚本来实现
# 将使用 SAPI 和 ModAPI 同时尝试实现
# 本段尝试实现 SAPI 类似的功能

import mod.server.extraServerApi as serverApi

ServerSystem = serverApi.GetServerSystemCls()
"""继承的系统，类似于SAPI的world模块"""
compFactory = serverApi.GetEngineCompFactory()
"""可用的所有组件，类似于SAPI的各种类（方块、实体、物品等）的方法"""
levelId = serverApi.GetLevelId()
"""当前地图的levelId"""

# ========== SAPI 方法（methods） ==========

class Entity:
    """ 表示一个世界中的实体（一个生物，一个玩家，或其他类似于矿车的移动物体）。 """

    def __init__(this, id): # type: ( str ) -> Entity
        this.id = id
        """实体的唯一 ID。"""
        this.typeId = compFactory.CreateEngineType( id ).GetEngineTypeStr()
        """实体的类型 ID。"""

    def getNeteaseData(this):
        """获取中国版可用的str形式（也可以直接使用id属性）。"""
        return this.id
    
    def runCommand( this, commandString ): # type: ( str ) -> bool
        """令实体运行命令。备注：不要带斜杠。"""
        return compFactory.CreateCommand(levelId).SetCommand("/{}".format(commandString), this.id)
    
    def teleport( this, location ): # type: ( Vector3 ) -> bool
        """令实体传送到一个新的位置。"""
        return compFactory.CreatePos(this.id).SetFootPos(location.getNeteaseData())
    
    def applyDamage( this, amount, options ): # type: ( float, dict ) -> bool
        """对实体造成伤害。"""
        cause = options["cause"] # type: str
        damagingEntity = options["damagingEntity"] # type: Entity
        internationalToNeteaseCause = {
            "anvil": "anvil",                               # 下落的铁砧
            "blockExplosion": "block_explosion",            # 方块爆炸
            "campfire": "camp_fire",                        # 营火
            "charging": "none",                             # （未使用）
            "contact": "contact",                           # 接触伤害（如仙人掌）
            "drowning": "drowning",                         # 溺水
            "entityAttack": "entity_attack",                # 生物攻击
            "entityExplosion": "entity_explosion",          # 生物爆炸
            "fall": "fall",                                 # 掉落
            "fallingBlock": "falling_block",                # 下落的方块（除了铁砧）
            "fire": "fire",                                 # 着火
            "fireTick": "fire_tick",                        # 连续着火（生物着火、在火中）
            "fireworks": "fireworks",                       # 烟花
            "flyIntoWall": "fly_into_wall",                 # 滑翔（撞墙）
            "freezing": "freezing",                         # 冰冻
            "lava": "lava",                                 # 熔岩
            "lightning": "lightning",                       # 闪电
            "maceSmash": "none",                            # （未使用）
            "magic": "magic",                               # 尖牙对生物造成的伤害、守卫者对生物造成的魔法伤害和药水伤害等
            "magma": "magma",                               # 岩浆（如站在岩浆方块上）
            "none": "none",                                 # 其他
            "override": "override",                         # 非正常方式（如脚本直接设置血量为0），这种方式的伤害不会被盔甲与buff吸收
            "piston": "piston",                             # 活塞
            "projectile": "projectile",                     # 抛射物攻击
            "ramAttack": "ram_attack",                      # 山羊冲撞
            "selfDestruct": "self_destruct",                # 自杀（kill命令）
            "sonicBoom": "sonic_boom",                      # 音波尖啸(监守者的远程攻击)
            "soulCampfire": "soul_camp_fire",               # 灵魂营火(营火的灵魂火变种)
            "stalactite": "stalactite",                     # 被钟乳石砸到
            "stalagmite": "stalagmite",                     # 掉落到石笋上
            "starve": "starve",                             # 饥饿
            "suffocation": "suffocation",                   # 窒息（密封空间）
            "temperature": "none",                          # （未使用）
            "thorns": "thorns",                             # 荆棘反弹伤害
            "void": "void",                                 # 虚空
            "wither": "wither",                             # 凋零效果
        }
        neteaseCause = internationalToNeteaseCause[cause]
        return compFactory.CreateHurt(this.id).Hurt(amount, neteaseCause, damagingEntity.id)

    def getHealthComponent( this ):
        """定义实体的生命值属性（等效于getComponent('health')，这里因为懒就不写了，日后再说 >:)）。"""
        return EntityHealthComponent(this.id)

class Player(Entity):
    """表示世界中的一个玩家。"""

    def __init__(this, id):
        super(Player, this).__init__(id)

class ItemStack:
    """定义一叠物品。"""

    typeId = ""
    """物品堆叠的类型 ID。"""
    amount = 0
    """物品堆叠的数量。"""

    def __init__(this, itemDict): # type: ( dict ) -> ItemStack
        this._sourceData = itemDict
        """（源数据）物品堆叠原始数据。"""
        this.typeId = itemDict["newItemName"]
        this.amount = itemDict["count"]
    
    def getNeteaseData(this):
        """获取中国版可用的dict形式。"""
        return this._sourceData

class Dimension:
    """定义一个世界的维度。"""

    def __init__(this, idInt):  # type: ( int ) -> Dimension
        this._sourceData = idInt
        """（源数据）维度的数字 ID。"""
        ids = { 0: "overworld", 1: "nether", 2: "the_end" }
        this.id = ids[idInt]
        """维度 ID。"""

    def getNeteaseData(this):
        """获取中国版可用的int形式。"""
        return this._sourceData

class Block:
    """定义一个维度中的方块"""

    typeId = ""
    """方块的类型 ID。"""

    def __init__(this, location, dimension):   # type: ( Vector3, Dimension ) -> Block
        this.x = location.x
        """方块的 x 坐标。"""
        this.y = location.y
        """方块的 y 坐标。"""
        this.z = location.z
        """方块的 z 坐标。"""
        this.dimension = dimension
        """方块所处的维度。"""
        this.location = location
        """方块所处的位置。"""
        this.typeId = compFactory.CreateBlockState(levelId).GetBlockStates(location.getNeteaseData(), dimension.getNeteaseData())["name"]

class Vector3:
    """定义一个向量。"""

    def __init__(this, x, y, z):    # type: (float, float, float) -> Vector3
        this.x = x
        """该向量的 x 分量。"""
        this.y = y
        """该向量的 y 分量。"""
        this.z = z
        """该向量的 z 分量。"""

    def getNeteaseData(this):
        """获取中国版脚本可用的tuple形式。"""
        return (this.x, this.y, this.z)

# ===== 实体组件 =====

class EntityHealthComponent:
    def __init__(this, entityId): # type: (str) -> EntityHealthComponent
        this.effectiveMax = compFactory.CreateAttr(entityId).GetAttrMaxValue(0)
        """实体血量的最大值。注意：可能返回 None（类似于js的undefined）。"""

# ==========

class ProjectileHitBlockAfterEvent:
    """弹射物击中方块后的相关信息。"""

    def __init__(this, event):  # type: ( dict ) -> None
        this.dimension = Dimension(compFactory.CreateDimension(event["entityId"]).GetEntityDimensionId())
        """弹射物击中的维度。"""
        # this.hitVector = Vector3(0, 0, 0)
        """（目前暂无功能）击中方块时的方向向量。"""
        this.location = Vector3(event["x"], event["y"], event["z"])
        """击中方块的位置。"""
        this.projectile = Entity(event["id"])
        """击中方块的弹射物。"""
        this.source = Entity(compFactory.CreateBulletAttributes(event["entityId"]).GetSourceEntityId())
        """弹射物的掷出者。"""
        this._sourceData = event
        """（源数据）事件数据本体"""

    def getNeteaseData(this):
        """获取中国版可用的dict形式。"""
        return this._sourceData
    
    def getBlockHit(this):
        return BlockHitInformation(this.getNeteaseData(), this.dimension)

class BlockHitInformation:
    """弹射物击中的方块信息。"""

    def __init__(this, event, dimension): # type: ( dict, Dimension ) -> BlockHitInformation
        faceData = { 0: "Down", 1: "Up", 2: "North", 3: "South", 4: "West", 5: "East" }
        this.block = Block((event["blockPosX"], event["blockPosY"], event["blockPosZ"]), dimension)
        this.face = faceData[event["hitFace"]]
        # this.faceLocation = None

class ProjectileHitEntityAfterEvent:
    """弹射物击中实体后的相关信息。"""

    def __init__(this, event):  # type: ( dict ) -> None
        this.dimension = Dimension(compFactory.CreateDimension(event["entityId"]).GetEntityDimensionId())
        """弹射物击中的维度。"""
        # this.hitVector: Vector3
        """（目前暂无功能）击中实体时的方向向量。"""
        this.location = Vector3(event["x"], event["y"], event["z"])
        """击中实体的位置。"""
        this.projectile = Entity(event["id"])
        """击中实体的弹射物。"""
        this.source = Entity(compFactory.CreateBulletAttributes(event["entityId"]).GetSourceEntityId())
        """弹射物的掷出者。"""
        this._sourceData = event
        """（源数据）事件数据本体"""

    def getNeteaseData(this):
        """获取中国版可用的dict形式。"""
        return this._sourceData
    
    def getEntityHit(this):
        return EntityHitInformation(this.getNeteaseData())

class EntityHitInformation:
    """弹射物击中的实体信息。"""

    def __init__(this, event): # type: ( dict ) -> EntityHitInformation
        this.entity = Entity(event["targetId"])

class ItemUseAfterEvent:
    """当玩家右击物品时触发。"""

    def __init__(this, event): # type: (dict) -> ItemUseAfterEvent
        this._sourceData = event
        this.itemStack = ItemStack(event["itemDict"])
        """被使用的物品堆叠。"""
        this.source = Player(event["entityId"])
        """触发该事件的玩家。"""

    def getNeteaseData(this):
        """获取中国版可用的dict形式。"""
        return this._sourceData
        
class ItemCompleteUseAfterEvent:
    """当玩家蓄力完成一个可蓄力物品时触发。"""

    def __init__(this, event): # type: (dict) -> ItemCompleteUseAfterEvent
        this._sourceData = event
        this.itemStack = ItemStack(event["itemDict"])
        """完成蓄力使用的物品堆叠。"""
        this.source = Player(event["entityId"])
        """触发该事件的玩家。"""
        # this.useDuration = Player(event["entityId"])
        """该物品被使用过的时长（游戏刻）。"""

    def getNeteaseData(this):
        """获取中国版可用的dict形式。"""
        return this._sourceData
        
class EntityDieAfterEvent:
    """包含世界中死亡实体的数据。"""

    def __init__(this, event): # type: (dict) -> EntityDieAfterEvent
        this._sourceData = event
        this.damageSource = EntityDamageSource(event)
        """提供伤害如何施加到实体上的信息。"""
        this.deadEntity = Entity(event["id"])
        """死亡实体。"""

    def getNeteaseData(this):
        """获取中国版可用的dict形式。"""
        return this._sourceData

class EntityDamageSource:
    """提供伤害如何施加到实体上的信息。"""

    def __init__(this, event): # type: (dict) -> EntityDamageSource
        this.cause = event["cause"]
        """伤害类型。警告！此处使用的是网易版伤害类型！"""
        this.damagingEntity = Entity(event["attacker"])
        """造成伤害的实体。"""
        this.damagingProjectile = Entity(event["attacker"])
        """造成伤害的弹射物。（目前暂时采用和damagingEntity一样的代码）"""

class EntityHealthChangedAfterEvent:
    """包含世界中生命值变化的实体的数据。"""

    newValue = 0.0
    """新的生命值。"""
    oldValue = 0.0
    """旧的生命值。"""

    def __init__(this, event): # type: (dict) -> EntityHealthChangedAfterEvent
        this._sourceData = event
        this.entity = Entity(event["entityId"])
        """生命值变化的实体。"""
        this.newValue = event["to"]
        this.oldValue = event["from"]

    def getNeteaseData(this):
        """获取中国版可用的dict形式。"""
        return this._sourceData

class EntitySpawnAfterEvent:
    """包含世界中刚生成的实体的数据。"""

    def __init__(this, event): # type: (dict) -> EntitySpawnAfterEvent
        this._sourceData = event
        # this.cause: EntityInitializationCause
        # """来源。"""
        this.entity = Entity(event["id"])
        """生成的实体。"""

    def getNeteaseData(this):
        """获取中国版可用的dict形式。"""
        return this._sourceData
