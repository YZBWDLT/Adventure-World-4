# coding=utf-8
import mod.server.extraServerApi as serverApi

ServerSystem = serverApi.GetServerSystemCls()

class ModServer(ServerSystem):
    
    def __init__(self, namespace, systemName):
        ServerSystem.__init__(self, namespace, systemName)
        self.__Listen()

    def __Listen(self):
        self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), "LoadServerAddonScriptsAfter", self, self.Init)

    @staticmethod
    def Init(__data):
        import index
