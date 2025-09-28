# -*- coding: utf-8 -*-

from mod.common.mod import Mod
import mod.server.extraServerApi as serverApi
import mod.client.extraClientApi as clientApi
from config import *


@Mod.Binding(FolderName, Version)
class Script_SAPI(object):

    def __init__(self):
        pass

    @Mod.InitServer()
    def SAPI_Sample_ServerInit(self):
        serverApi.RegisterSystem(NameSpace, "ModServer",
                                 "%s.lib.Mod.Server.ModServer" % FolderName)
        serverApi.RegisterSystem(NameSpace, "world",
                                 "%s.lib.ModSAPI.SAPI_S.World" % FolderName)
        serverApi.RegisterSystem(NameSpace, "system",
                                 "%s.lib.ModSAPI.SAPI_S.System" % FolderName)
        serverApi.RegisterSystem(NameSpace, "Base",
                                 "%s.lib.ModSAPI.minecraft.SAPIS" % FolderName)

    @Mod.InitClient()
    def SAPI_Sample_ClientInit(self):
        clientApi.RegisterSystem(NameSpace, "ModClient",
                                 "%s.lib.Mod.Client.ModClient" % FolderName)
        clientApi.RegisterSystem(NameSpace, "SAPI_C",
                                 "%s.lib.ModSAPI.SAPI_C.SAPI_C" % FolderName)

