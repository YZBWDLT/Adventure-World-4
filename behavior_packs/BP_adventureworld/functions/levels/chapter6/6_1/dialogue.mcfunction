# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你一定想象不到当我发现空间贤者的内容时有多激动！"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我也一样！毕竟我们终于有线索了！"}]}

execute @e[name=dialogue,scores={time=81}] ~~~ function lib/states/dialogue/disable
