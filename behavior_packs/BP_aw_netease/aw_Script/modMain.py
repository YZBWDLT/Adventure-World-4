# -*- coding: utf-8 -*-
import modConfig
from mod.common.mod import Mod

import mod.server.extraServerApi as serverApi

import mod.client.extraClientApi as clientApi


@Mod.Binding(name="aw_Script", version="0.0.1")
class aw_Script(object):

    def __init__(self):
        pass

    @Mod.InitServer()
    def aw_ScriptServerInit(self):
        serverApi.RegisterSystem(modConfig.NameSpace, modConfig.Server_SystemName, modConfig.Server_Path)
        print "----------加载服务端----------"

    @Mod.DestroyServer()
    def aw_ScriptServerDestroy(self):
        pass

    @Mod.InitClient()
    def aw_ScriptClientInit(self):
        clientApi.RegisterSystem(modConfig.NameSpace, modConfig.Client_SystemName, modConfig.Client_Path)
        print "----------加载客户端----------"

    @Mod.DestroyClient()
    def aw_ScriptClientDestroy(self):
        pass
