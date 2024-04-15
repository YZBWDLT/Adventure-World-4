# ===== 对话 =====

execute @e[name=dialogue,scores={active=1,time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §e张宇： §7在左侧调整难度，右侧调整模式。"}]}
execute @e[name=dialogue,scores={active=1,time=140}] ~~~ tellraw @a {"rawtext":[{"translate":"* §e张宇： §7神殿比较古老了，所以按按钮反应会稍微慢一点，哈哈。"}]}
execute @e[name=dialogue,scores={active=1,time=220}] ~~~ tellraw @a {"rawtext":[{"translate":"* §e张宇： §7万万不可逞能，提升一级的难度并不像你想象的那么简单。"}]}

execute @e[name=dialogue,scores={active=1,time=221}] ~~~ function lib/states/dialogue/disable

execute @e[name=dialogue,scores={active=3,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §e张宇： §7你是要回去吗？"}]}
execute @e[name=dialogue,scores={active=3,time=2}] ~~~ function lib/states/dialogue/disable
