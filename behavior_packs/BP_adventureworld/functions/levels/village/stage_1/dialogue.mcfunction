# ===== 剧情线 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7林乐！林乐！都这个时间了，还不起床？"}]}

execute @e[name=dialogue,scores={time=160}] ~~~ function lib/states/dialogue/disable
