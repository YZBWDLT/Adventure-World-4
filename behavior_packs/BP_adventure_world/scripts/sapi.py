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

    def __init__(self, id): # type: ( str ) -> None
        self.id = id
        """实体的唯一 ID。"""
        self.typeId = compFactory.CreateEngineType( id ).GetEngineTypeStr()
        """实体的类型 ID。"""

    def getNeteaseData(self):
        """获取中国版可用的str形式（也可以直接使用id属性）。"""
        return self.id
    
    def runCommand( self, commandString ): # type: ( str ) -> bool
        """令实体运行命令。备注：不要带斜杠。"""
        return compFactory.CreateCommand(levelId).SetCommand("/{}".format(commandString), self.id)
    
    def teleport( self, location ): # type: ( Vector3 ) -> bool
        """令实体传送到一个新的位置。"""
        return compFactory.CreatePos(self.id).SetFootPos(location.getNeteaseData())
    
    def applyDamage( self, amount, options ): # type: ( float, dict ) -> bool
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
        return compFactory.CreateHurt(self.id).Hurt(amount, neteaseCause, damagingEntity.id)

    def getHealthComponent( self ):
        """定义实体的生命值属性（等效于getComponent('health')，这里因为懒就不写了，日后再说 >:)）。"""
        return EntityHealthComponent(self.id)

class Player(Entity):
    """表示世界中的一个玩家。"""

    def __init__(self, id):
        super(Player, self).__init__(id)

class ItemStack:
    """定义一叠物品。"""

    typeId = ""
    """物品堆叠的类型 ID。"""
    amount = 0
    """物品堆叠的数量。"""

    def __init__(self, itemDict): # type: ( dict ) -> None
        self._sourceData = itemDict
        """（源数据）物品堆叠原始数据。"""
        self.typeId = itemDict["newItemName"]
        self.amount = itemDict["count"]
    
    def getNeteaseData(self):
        """获取中国版可用的dict形式。"""
        return self._sourceData

class Dimension:
    """定义一个世界的维度。"""

    def __init__(self, idInt):  # type: ( int ) -> None
        self._sourceData = idInt
        """（源数据）维度的数字 ID。"""
        ids = { 0: "overworld", 1: "nether", 2: "the_end" }
        self.id = ids[idInt]
        """维度 ID。"""

    def getNeteaseData(self):
        """获取中国版可用的int形式。"""
        return self._sourceData

class Block:
    """定义一个维度中的方块"""

    typeId = ""
    """方块的类型 ID。"""

    def __init__(self, location, dimension):   # type: ( Vector3, Dimension ) -> None
        self.x = location.x
        """方块的 x 坐标。"""
        self.y = location.y
        """方块的 y 坐标。"""
        self.z = location.z
        """方块的 z 坐标。"""
        self.dimension = dimension
        """方块所处的维度。"""
        self.location = location
        """方块所处的位置。"""
        self.typeId = compFactory.CreateBlockState(levelId).GetBlockStates(location.getNeteaseData(), dimension.getNeteaseData())["name"]

class Vector3:
    """定义一个向量。"""

    def __init__(self, x, y, z):    # type: (float, float, float) -> None
        self.x = x
        """该向量的 x 分量。"""
        self.y = y
        """该向量的 y 分量。"""
        self.z = z
        """该向量的 z 分量。"""

    def getNeteaseData(self):
        """获取中国版脚本可用的tuple形式。"""
        return (self.x, self.y, self.z)

# ===== 实体组件 =====

class EntityHealthComponent:
    def __init__(self, entityId): # type: (str) -> None
        self.effectiveMax = compFactory.CreateAttr(entityId).GetAttrMaxValue(0)
        """实体血量的最大值。注意：可能返回 None（类似于js的undefined）。"""

# ==========

class ProjectileHitBlockAfterEvent:
    """弹射物击中方块后的相关信息。"""

    def __init__(self, event):  # type: ( dict ) -> None
        self.dimension = Dimension(compFactory.CreateDimension(event["entityId"]).GetEntityDimensionId())
        """弹射物击中的维度。"""
        # self.hitVector = Vector3(0, 0, 0)
        """（目前暂无功能）击中方块时的方向向量。"""
        self.location = Vector3(event["x"], event["y"], event["z"])
        """击中方块的位置。"""
        self.projectile = Entity(event["id"])
        """击中方块的弹射物。"""
        self.source = Entity(compFactory.CreateBulletAttributes(event["entityId"]).GetSourceEntityId())
        """弹射物的掷出者。"""
        self._sourceData = event
        """（源数据）事件数据本体"""

    def getNeteaseData(self):
        """获取中国版可用的dict形式。"""
        return self._sourceData
    
    def getBlockHit(self):
        return BlockHitInformation(self.getNeteaseData(), self.dimension)

class BlockHitInformation:
    """弹射物击中的方块信息。"""

    def __init__(self, event, dimension): # type: ( dict, Dimension ) -> None
        faceData = { 0: "Down", 1: "Up", 2: "North", 3: "South", 4: "West", 5: "East" }
        self.block = Block(Vector3(event["blockPosX"], event["blockPosY"], event["blockPosZ"]), dimension)
        self.face = faceData[event["hitFace"]]
        # self.faceLocation = None

class ProjectileHitEntityAfterEvent:
    """弹射物击中实体后的相关信息。"""

    def __init__(self, event):  # type: ( dict ) -> None
        self.dimension = Dimension(compFactory.CreateDimension(event["entityId"]).GetEntityDimensionId())
        """弹射物击中的维度。"""
        # self.hitVector: Vector3
        """（目前暂无功能）击中实体时的方向向量。"""
        self.location = Vector3(event["x"], event["y"], event["z"])
        """击中实体的位置。"""
        self.projectile = Entity(event["id"])
        """击中实体的弹射物。"""
        self.source = Entity(compFactory.CreateBulletAttributes(event["entityId"]).GetSourceEntityId())
        """弹射物的掷出者。"""
        self._sourceData = event
        """（源数据）事件数据本体"""

    def getNeteaseData(self):
        """获取中国版可用的dict形式。"""
        return self._sourceData
    
    def getEntityHit(self):
        return EntityHitInformation(self.getNeteaseData())

class EntityHitInformation:
    """弹射物击中的实体信息。"""

    def __init__(self, event): # type: ( dict ) -> None
        self.entity = Entity(event["targetId"])

class ItemUseAfterEvent:
    """当玩家右击物品时触发。"""

    def __init__(self, event): # type: (dict) -> None
        self._sourceData = event
        self.itemStack = ItemStack(event["itemDict"])
        """被使用的物品堆叠。"""
        self.source = Player(event["entityId"])
        """触发该事件的玩家。"""

    def getNeteaseData(self):
        """获取中国版可用的dict形式。"""
        return self._sourceData
        
class ItemCompleteUseAfterEvent:
    """当玩家蓄力完成一个可蓄力物品时触发。"""

    def __init__(self, event): # type: (dict) -> None
        self._sourceData = event
        self.itemStack = ItemStack(event["itemDict"])
        """完成蓄力使用的物品堆叠。"""
        self.source = Player(event["entityId"])
        """触发该事件的玩家。"""
        # self.useDuration = Player(event["entityId"])
        """该物品被使用过的时长（游戏刻）。"""

    def getNeteaseData(self):
        """获取中国版可用的dict形式。"""
        return self._sourceData
        
class EntityDieAfterEvent:
    """包含世界中死亡实体的数据。"""

    def __init__(self, event): # type: (dict) -> None
        self._sourceData = event
        self.damageSource = EntityDamageSource(event)
        """提供伤害如何施加到实体上的信息。"""
        self.deadEntity = Entity(event["id"])
        """死亡实体。"""

    def getNeteaseData(self):
        """获取中国版可用的dict形式。"""
        return self._sourceData

class EntityDamageSource:
    """提供伤害如何施加到实体上的信息。"""

    def __init__(self, event): # type: (dict) -> None
        self.cause = event["cause"]
        """伤害类型。警告！此处使用的是网易版伤害类型！"""
        self.damagingEntity = Entity(event["attacker"])
        """造成伤害的实体。"""
        self.damagingProjectile = Entity(event["attacker"])
        """造成伤害的弹射物。（目前暂时采用和damagingEntity一样的代码）"""

class EntityHealthChangedAfterEvent:
    """包含世界中生命值变化的实体的数据。"""

    newValue = 0.0
    """新的生命值。"""
    oldValue = 0.0
    """旧的生命值。"""

    def __init__(self, event): # type: (dict) -> None
        self._sourceData = event
        self.entity = Entity(event["entityId"])
        """生命值变化的实体。"""
        self.newValue = event["to"]
        self.oldValue = event["from"]

    def getNeteaseData(self):
        """获取中国版可用的dict形式。"""
        return self._sourceData

class EntitySpawnAfterEvent:
    """包含世界中刚生成的实体的数据。"""

    def __init__(self, event): # type: (dict) -> None
        self._sourceData = event
        # self.cause: EntityInitializationCause
        # """来源。"""
        self.entity = Entity(event["id"])
        """生成的实体。"""

    def getNeteaseData(self):
        """获取中国版可用的dict形式。"""
        return self._sourceData
