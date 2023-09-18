# ===== 快捷栏标题 =====
# 红色方块(§c)代表未完成的普通怪物波，绿色方块(§a)反之；紫色(§d)代表未完成的BOSS，蓝色(§b)反之。
# 循环执行，由快捷栏标题控制器(functions/system/actionbar_title)控制，在改动完本文件后应当及时适配控制器，防止标题不显示

execute @e[name=level,scores={background=720}] ~~~ execute @a[scores={isAlive=1}] ~~~ titleraw @s actionbar {"rawtext": [{"translate": "§l关卡 7-2 §r§f| §b剩余怪物数目 §f%%s | §c■■■","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}}]}
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] ~~~ titleraw @s actionbar {"rawtext": [{"translate": "§l关卡 7-2 §r§f| §b剩余怪物数目 §f%%s | §a■§c■■","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}}]}
execute @e[name=level,scores={background=722}] ~~~ execute @a[scores={isAlive=1}] ~~~ titleraw @s actionbar {"rawtext": [{"translate": "§l关卡 7-2 §r§f| §b剩余怪物数目 §f%%s | §a■■§c■","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}}]}
execute @e[name=level,scores={background=723}] ~~~ execute @a ~~~ titleraw @s actionbar {"rawtext": [{"translate": "§l关卡 7-2 §r§f| §a关卡已完成"}]}

execute @e[name=level,scores={background=720}] ~~~ execute @a[scores={isAlive=0}] ~~~ titleraw @s actionbar {"rawtext": [{"translate": "§l关卡 7-2 §r§f| §b剩余怪物数目 §f%%s | §c■■■ §r§f| §c你已死亡，现在正在观战","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}}]}
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=0}] ~~~ titleraw @s actionbar {"rawtext": [{"translate": "§l关卡 7-2 §r§f| §b剩余怪物数目 §f%%s | §a■§c■■ §r§f| §c你已死亡，现在正在观战","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}}]}
execute @e[name=level,scores={background=722}] ~~~ execute @a[scores={isAlive=0}] ~~~ titleraw @s actionbar {"rawtext": [{"translate": "§l关卡 7-2 §r§f| §b剩余怪物数目 §f%%s | §a■■§c■ §r§f| §c你已死亡，现在正在观战","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}}]}
