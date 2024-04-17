# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=100}] ~~~ execute @e[name=storyMode,scores={data=0}] ~~~ tellraw @a {"rawtext":[{"text":"* 你突然感觉轻飘飘的，眼前开始模糊......"}]}
execute @e[name=dialogue,scores={time=100}] ~~~ execute @e[name=storyMode,scores={data=1}] ~~~ tellraw @a {"rawtext":[{"text":"* 此时，我突然感觉轻飘飘的，眼前也开始模糊......"}]}

execute @e[name=dialogue,scores={time=220}] ~~~ function lib/states/dialogue/disable
