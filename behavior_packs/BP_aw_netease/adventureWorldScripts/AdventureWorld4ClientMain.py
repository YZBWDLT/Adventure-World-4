# -*- coding: utf-8 -*-
import mod.client.extraClientApi as clientApi
ClientSystem = clientApi.GetClientSystemCls()

class AdventureWorld4Client(ClientSystem):

    def __init__(self, namespace, systemName):
        super(AdventureWorld4Client, self).__init__(namespace, systemName)
        self.subscribe()

    def subscribe(self):
        pass

    def unsubscribe(self):
        pass
