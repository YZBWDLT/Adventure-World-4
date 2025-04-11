# -*- coding: utf-8 -*-
from mod.common.mod import Mod
import mod.server.extraServerApi as serverApi
import mod.client.extraClientApi as clientApi

@Mod.Binding(name = "adventureWorld", version = "4.2.0")
class AdventureWorldSwordTrial(object):
    def __init__(self):
        pass

    @Mod.InitServer()
    def serverSubscribe(self):
        serverApi.RegisterSystem("AdventureWorldSwordTrial", "AdventureWorld4Server", "adventureWorldScripts.AdventureWorld4ServerMain.AdventureWorld4Server")
    
    @Mod.DestroyServer()
    def serverUnsubscribe(self):
        pass
    
    @Mod.InitClient()
    def clientSubscribe(self):
        clientApi.RegisterSystem("AdventureWorldSwordTrial", "AdventureWorld4Client", "adventureWorldScripts.AdventureWorld4ClientMain.AdventureWorld4Client")
    
    @Mod.DestroyClient()
    def clientUnsubscribe(self):
        pass

