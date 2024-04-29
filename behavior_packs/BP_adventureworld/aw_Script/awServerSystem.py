# -*- coding: utf-8 -*-

import mod.server.extraServerApi as serverApi
ServerSystem = serverApi.GetServerSystemCls()
ns = serverApi.GetEngineNamespace()
sn = serverApi.GetEngineSystemName()
CompFactory = serverApi.GetEngineCompFactory()

class awServerSystem(ServerSystem):
    def __init__(self, namespace, systemName):
        ServerSystem.__init__(self, namespace, systemName)
        self.ListenEvent()

    def ListenEvent(self):
        self.ListenForEvent(ns, sn, 'ItemReleaseUsingServerEvent', self, self.ItemReleaseUsingServerEvent)

    def ItemReleaseUsingServerEvent(self, args):
        p_id = args['playerId']
        rot = CompFactory.CreateRot(p_id).GetRot()
        rot = (rot[0] - 0, rot[1])
        param = {
            'power': 1.0,
            'gravity': 0.0,
            'direction': serverApi.GetDirFromRot(rot)
        }
        projectileComp = CompFactory.CreateProjectile(p_id)
        e_id = projectileComp.CreateProjectileEntity(p_id, 'aw:hookshot', param)

        # OnScriptTickServer的回调函数，会在引擎tick的时候调用，1秒30帧（被调用30次）
    def OnTickServer(self):
        """
        Driven by event, One tick way
        """
        pass

    # 这个Update函数是基类的方法，同样会在引擎tick的时候被调用，1秒30帧（被调用30次）
    def Update(self):
        """
        Driven by system manager, Two tick way
        """
        pass

    def Destroy(self):
        pass
