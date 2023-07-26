# NPC对话表

execute @e[name=...,tag=chatting,type=aw:npc_netease] ~~~ tellraw @p {"rawtext":[{"translate":"%%s §f>> ","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=test,tag=chatting,type=aw:npc_netease] ~~~ tellraw @p {"rawtext":[{"translate":"%%s §f>> A test","with":{"rawtext":[{"selector":"@s"}]}}]}

tag @e remove chatting