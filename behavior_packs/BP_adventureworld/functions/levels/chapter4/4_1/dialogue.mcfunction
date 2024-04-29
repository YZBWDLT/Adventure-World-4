# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这里的雪会塌陷，果然需要皮靴。"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯。还要小心远程攻击的敌人啊！"}]}

execute @e[name=dialogue,scores={time=81}] ~~~ function lib/states/dialogue/disable
