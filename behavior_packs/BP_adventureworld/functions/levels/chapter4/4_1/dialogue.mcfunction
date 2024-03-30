# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7这里的雪会塌陷，果然需要皮靴。"}]}
execute @e[name=dialogue,scores={time=100}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7冰也非常滑，小心远程攻击的敌人。"}]}

execute @e[name=dialogue,scores={time=101}] ~~~ function lib/states/dialogue/disable
