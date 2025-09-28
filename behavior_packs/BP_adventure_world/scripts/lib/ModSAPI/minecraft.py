# -*- coding: utf-8 -*-
import mod.server.extraServerApi as serverApi
import SAPI_S as SAPI
from Classes.ItemStack import *
import Classes.FormData as fd
from ...config import *

def getWorld():
    # type: () -> SAPI.World
    return serverApi.GetSystem(NameSpace, "world")

def getSystem():
    # type: () -> SAPI.System
    return serverApi.GetSystem(NameSpace, "system")

def getActionFormData():
    # type: () -> type[fd.ActionFormData]
    if serverApi.GetSystem(NameSpace, "Base"):
        return serverApi.GetSystem(NameSpace, "Base").getActionFormData()
    
def getModalFormData():
    # type: () -> type[fd.ModalFormData]
    if serverApi.GetSystem(NameSpace, "Base"):
        return serverApi.GetSystem(NameSpace, "Base").getModalFormData()

world = getWorld()
system = getSystem()
ActionFormData = getActionFormData()
ModalFormData = getModalFormData()

ServerSystem = serverApi.GetServerSystemCls()

class SAPIS(ServerSystem):
    """
    base system of this addon
    """

    def __init__(self, namespace, systemName):
        ServerSystem.__init__(self, namespace, systemName)
        self.__ListenEvents()
        self.formTasks = {}

    def __ListenEvents(self):
        self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), "ServerChatEvent", self, self.debug)
        self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), "LoadServerAddonScriptsAfter", self, self.Init)
        self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), "CustomCommandTriggerServerEvent", self, self.customCommand)
        self.ListenForEvent("SAPI", "SAPI_C", "ActionFormResponse", self, self.responseActionForm)
        self.ListenForEvent("SAPI", "SAPI_C", "ModalFormResponse", self, self.responseModalForm)

    @staticmethod
    def Init(__data):
        global world, ActionFormData
        world = getWorld()
        ActionFormData = getActionFormData()
        ModalFormData = getModalFormData()

    def customCommand(self, data):
        if data['command'] == 'modsapi':
            args = data['args']
            origin = data['origin']['entityId']
            if origin:
                if args[0]['value'] == 'debug':
                    self.debug({"message": "debug %s" % args[1]['value']})
            data['return_failed'] = False

    def responseActionForm(self, data):
        import Classes.FormResponse as fr
        if data['id'] in self.formTasks:
            self.formTasks[data['id']](fr.ActionFormResponse(data))

    def responseModalForm(self, data):
        import Classes.FormResponse as fr
        if data['id'] in self.formTasks:
            self.formTasks[data['id']](fr.ModalFormResponse(data))

    def getActionFormData(self):
        return fd.ActionFormData
    
    def getModalFormData(self):
        return fd.ModalFormData
    
    def setFormCallback(self, id, callback):
        self.formTasks[id] = callback
