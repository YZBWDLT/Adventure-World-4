# ===== 对话内容 =====

execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7那些拿着三叉戟的溺尸真是烦人，扎起人来一点不手软。"}]}
execute @e[name=dialogue,scores={time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7千万注意安全啊。"}]}

execute @e[name=dialogue,scores={time=81}] ~~~ function lib/states/dialogue/disable
