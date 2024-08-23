# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"§7目前没什么可聊的"}]}

execute @e[name=dialogue,scores={time=1}] ~~~ function lib/states/dialogue/disable
