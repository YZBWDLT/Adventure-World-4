# ===== 鸽子对话 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a鸽子（PigeonKI）： §7巴豆、量筒和绿叶的配合超级有默契的！有可能的话，我很希望他们能多多合作awa"}]}
execute @e[name=dialogue,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a鸽子（PigeonKI）： §7偷偷告诉你哟，作者们都是鸽子，7-5的制作拖了一年呢=p"}]}

execute @e[name=dialogue,scores={time=140..}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=dialogue,scores={time=140..}] ~~~ function lib/states/dialogue/disable
