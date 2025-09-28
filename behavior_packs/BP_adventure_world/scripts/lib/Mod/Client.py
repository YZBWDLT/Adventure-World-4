# coding=utf-8
import mod.client.extraClientApi as clientApi

ClientSystem = clientApi.GetClientSystemCls()

class ModClient(ClientSystem):

    def __init__(self, namespace, systemName):
        ClientSystem.__init__(self, namespace, systemName)
