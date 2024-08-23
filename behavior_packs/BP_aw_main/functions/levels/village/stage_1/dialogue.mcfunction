# ===== 剧情线 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §b田英： §7林乐！起床啦！别老是睡懒觉啊可恶ヽ(｀⌒´)ノ！"}]}

execute @e[name=dialogue,scores={time=61}] ~~~ function lib/states/dialogue/disable
