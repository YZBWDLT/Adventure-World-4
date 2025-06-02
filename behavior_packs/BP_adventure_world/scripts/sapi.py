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
    """
    表示一个世界中的实体（一个生物，一个玩家，或其他类似于矿车的移动物体）。
    """

    id = ""
    """实体的唯一 ID。"""
    typeId = ""
    """实体的类型 ID。"""

    def __init__(self, id): # type: ( str ) -> None
        self.id = id
        self.typeId = compFactory.CreateEngineType( id ).GetEngineTypeStr()
    
    def runCommand( self, commandString ): # type: ( str ) -> bool
        """令实体运行命令。"""
        return compFactory.CreateCommand(levelId).SetCommand("/{}".format(commandString), self.id)
    
    def teleport( self, location ): # type: ( tuple[float, float, float] ) -> bool
        """令实体传送到一个新的位置。"""
        return compFactory.CreatePos(self.id).SetFootPos(location)
    
    def applyDamage( self, amount, options ): # type: ( float, dict ) -> bool
        """对实体造成伤害。"""
        cause = options["cause"] # type: str
        damagingEntity = options["damagingEntity"] # type: Entity
        return compFactory.CreateHurt(self.id).Hurt(amount, cause, damagingEntity.id)
