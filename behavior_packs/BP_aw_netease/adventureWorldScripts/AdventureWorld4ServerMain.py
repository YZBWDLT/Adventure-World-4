# -*- coding: utf-8 -*-
# 使用命令或附加包难以实现的内容，使用脚本来实现
# 将使用 SAPI 和 ModAPI 同时尝试实现

import mod.server.extraServerApi as serverApi

ServerSystem = serverApi.GetServerSystemCls()
"""继承的系统，类似于SAPI的world模块"""

compFactory = serverApi.GetEngineCompFactory()
"""可用的所有组件，类似于SAPI的各种类（方块、实体、物品等）的方法"""

defaultNamespace = serverApi.GetEngineNamespace()
"""默认的服务端引擎命名空间（用于事件订阅）"""

defaultSystemName = serverApi.GetEngineSystemName()
"""默认的服务端引擎名称（用于事件订阅）"""

levelId = serverApi.GetLevelId()
"""当前地图的levelId"""

class AdventureWorld4Server(ServerSystem):

    def __init__(self, namespace, systemName):
        super(AdventureWorld4Server, self).__init__(namespace, systemName)
        self.subscribe()

    def subscribe(self):
        self.ListenForEvent(defaultNamespace, defaultSystemName, "ProjectileDoHitEffectEvent", self, self.projectileHitBlock)

    def unsubscribe(self):
        pass
    
    def projectileHitBlock(self, event):
        # type: ( dict ) -> None
        """
        基于中国版事件 ProjectileDoHitEffectEvent。等效于 SAPI 的 world.afterEvents.projectileHitBlock.subscribe()。
        """
        if event["hitTargetType"] == "BLOCK":
            # ----- 获取变量 -----
            blockLocation = (event["blockPosX"], event["blockPosY"], event["blockPosZ"]) # 方块位置
            location = (event["x"], event["y"], event["z"]) # 击中位置
            projectile = event["id"] # 投掷物
            source = compFactory.CreateBulletAttributes(projectile).GetSourceEntityId() # 投掷者
            # dimension = compFactory.CreateDimension(projectile).GetEntityDimensionId() # 击中维度
            blockHitFace = event["hitFace"] # 击中面

            # ----- 执行函数 -----
            self.teleportPlayerToPlanks( blockLocation, location, source, projectile, blockHitFace )
    
    def runCommand( self, command, executor = None ):
        # type: ( str, str ) -> bool
        """运行命令。等效于 SAPI 的 Entity.runCommand()。"""
        return compFactory.CreateCommand(levelId).SetCommand(command, executor, False)
    
    def getTypeId( self, id ):
        # type: ( str ) -> str
        """获取实体对应的 TypeID。等效于 SAPI 的 Entity.typeId。"""
        return compFactory.CreateEngineType( id ).GetEngineTypeStr()
    
    def teleport( self, entity, pos ):
        # type: ( str, tuple ) -> None
        """传送实体到特定位置。等效于 SAPI 的 Entity.teleport()。"""
        compFactory.CreatePos(entity).SetFootPos(pos)

    # ========== SAPI 类似功能实现 ↑ ↓ 地图功能实现 ==========

    # 当玩家的御风珠砸中木板后，则传送玩家
    def teleportPlayerToPlanks( self, locB, locE, player, projectile, blockFace ):
        # type: ( tuple[float, float, float], tuple[float, float, float], str, str, int ) -> None

        ## 如果：扔出的玩家真实存在，且为玩家类型；御风珠扔中了任意一种木板，则……
        if (
            self.getTypeId(player) == "minecraft:player"
            and self.getTypeId(projectile) == "minecraft:snowball"
            and self.runCommand( "/execute if block {} {} {} planks".format(locB[0], locB[1], locB[2]), projectile )
        ):
            ## 如果扔中顶面，则传送到投中位置的上方 1 格
            if blockFace == 1:
                self.teleport( player, ( locE[0], locE[1] + 1, locE[2] ) )
            ## 如果扔中底面，则传送到投中位置的下方 3 格
            elif blockFace == 0:
                self.teleport( player, ( locE[0], locE[1] - 3, locE[2] ) )
            ## 如果扔中东面，则传送到投中位置东边 0.7 格，下方 0.5 格
            elif blockFace == 5:
                self.teleport( player, ( locE[0] + 0.7, locE[1] - 0.5, locE[2] ) )
            ## 如果扔中西面，则传送到投中位置西边 0.7 格，下方 0.5 格
            elif blockFace == 4:
                self.teleport( player, ( locE[0] - 0.7, locE[1] - 0.5, locE[2] ) )
            ## 如果扔中南面，则传送到投中位置南边 0.7 格，下方 0.5 格
            elif blockFace == 3:
                self.teleport( player, ( locE[0], locE[1] - 0.5, locE[2] + 0.7 ) )
            ## 如果扔中北面，则传送到投中位置北边 0.7 格，下方 0.5 格
            elif blockFace == 2:
                self.teleport( player, ( locE[0], locE[1] - 0.5, locE[2] - 0.7 ) )
            ## 对玩家播放音效
            self.runCommand( "/playsound mob.endermen.portal @s", player )
