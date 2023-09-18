# ===== 快捷栏标题 =====
# 红色方块(§c)代表未完成的普通怪物波，绿色方块(§a)反之；紫色(§d)代表未完成的BOSS，蓝色(§b)反之。
# 循环执行，由快捷栏标题控制器(functions/system/actionbar_title)控制，在改动完本文件后应当及时适配控制器，防止标题不显示

execute @e[name=level,scores={background=700}] ~~~ execute @a ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§f剑之神殿" } ] }