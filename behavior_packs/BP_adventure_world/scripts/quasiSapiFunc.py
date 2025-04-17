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
    """实体类，返回实体数据和方法"""

    id = ""
    """实体ID。"""
    typeId = ""
    """实体的类型ID。"""

    def __init__(self, id): # type: ( str ) -> None
        self.id = id
        self.typeId = compFactory.CreateEngineType( id ).GetEngineTypeStr()
    
    def runCommand( self, command ): # type: ( str ) -> bool
        """运行命令。等效于 SAPI 的 Entity.runCommand()。"""
        return compFactory.CreateCommand(levelId).SetCommand(command, self.id, False)
    
    def teleport( self, pos ): # type: ( tuple[float, float, float] ) -> bool
        """传送实体到特定位置。等效于 SAPI 的 Entity.teleport()。"""
        return compFactory.CreatePos(self.id).SetFootPos(pos)
