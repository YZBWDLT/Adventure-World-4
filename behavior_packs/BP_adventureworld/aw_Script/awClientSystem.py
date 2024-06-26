# -*- coding: utf-8 -*-
import modConfig
import mod.client.extraClientApi as clientApi

ClientSystem = clientApi.GetClientSystemCls()

ns = clientApi.GetEngineNamespace()
sn = clientApi.GetEngineSystemName()


class awClientSystem(ClientSystem):
    def __init__(self, namespace, systemName):
        ClientSystem.__init__(self, namespace, systemName)

    # 监听引擎OnScriptTickClient事件，引擎会执行该tick回调，1秒钟30帧
    def OnTickClient(self):
        """
        Driven by event, One tick way
        """
        pass

    # 被引擎直接执行的父类的重写函数，引擎会执行该Update回调，1秒钟30帧
    def Update(self):
        """
        Driven by system manager, Two tick way
        """
        pass

    def Destroy(self):
        pass
