# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7守卫者好对付吗？"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7小菜一碟！只要跑到它面前，它就不敢发射激光了。"}]}

execute @e[name=dialogue,scores={time=81}] ~~~ function lib/states/dialogue/disable
