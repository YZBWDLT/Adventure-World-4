# ===== 绿叶对话 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a绿叶（GreeLeaf）： §7感谢游玩！通关的成就感如何？"}]}
execute @e[name=dialogue,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a绿叶（GreeLeaf）： §7本次o绿叶o和各位大佬强强联合做出了此图，希望你喜欢~"}]}
execute @e[name=dialogue,scores={time=180}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a绿叶（GreeLeaf）： §7咕咕咕，咕咕咕~~"}]}

execute @e[name=dialogue,scores={time=200..}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=dialogue,scores={time=200..}] ~~~ function lib/states/dialogue/disable
