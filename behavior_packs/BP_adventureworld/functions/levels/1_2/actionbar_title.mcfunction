# 快捷栏标题
# -----原理-----
# 一些简单的titleraw命令，由level记分板记录的关卡数据决定显示的内容。为稳妥起见（因为后续可能会加数值显示之类的），套上一个execute防止数值显示出错
# 红色方块(§c)代表未完成的普通怪物波，绿色方块(§a)反之；紫色(§d)代表未完成的BOSS，蓝色(§b)反之。
# 此函数需要循环执行，由快捷栏标题控制器(functions/system/actionbar_title_controller)控制，在改动完本文件后应当及时适配控制器，防止标题不显示

execute @e[name=level,scores={background=120}] ~~~ execute @a[tag=alive] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l关卡 1-2 §r§f| §b剩余怪物数目 §f%%s | §c■","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}} ] }
execute @e[name=level,scores={background=121}] ~~~ execute @a ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l关卡 1-2 §r§f| §a关卡已完成"} ] }

execute @e[name=level,scores={background=120}] ~~~ execute @a[tag=!alive] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l关卡 1-2 §r§f| §b剩余怪物数目 §f%%s | §c■ §r§f| §c你已死亡，现在正在观战","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}} ] }