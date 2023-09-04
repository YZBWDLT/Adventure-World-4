# 奖励遍历器（需要循环执行）
# ----- 原理 -----
# 此遍历器重复对最近的1个玩家施加遍历标签。如此，那些被施加了遍历标签的玩家中，最远的那个一定是刚刚被施加了遍历标签的。
# 如果连全世界中最远的玩家都有了遍历标签，说明遍历完成，因此第一条命令会移除掉所有玩家的遍历标签。
# 对于本奖励遍历器而言，必须要在active.potionTraversing=1时才能正常运行。一旦遍历结束，移除该标签以“关闭”此遍历器。

## 对所有距离最近且没有遍历标签的给予遍历标签
tag @a[c=1,tag=!potionTraversing] add potionTraversing

## 带有遍历标签且距离最远的即为刚加上遍历的对象，执行命令
## 此处执行的命令为给予玩家战利品
execute @e[name=level,scores={background=120..129}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/1_2"
execute @e[name=level,scores={background=130..139}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/1_3"
execute @e[name=level,scores={background=210..219}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/2_1"
execute @e[name=level,scores={background=220..229}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/2_2"
execute @e[name=level,scores={background=230..239}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/2_3"
execute @e[name=level,scores={background=310..319}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/3_1"
execute @e[name=level,scores={background=320..329}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/3_2"
execute @e[name=level,scores={background=330..339}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/3_3"
execute @e[name=level,scores={background=340..349}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/3_4"
execute @e[name=level,scores={background=410..419}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/4_1"
execute @e[name=level,scores={background=420..429}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/4_2"
execute @e[name=level,scores={background=430..439}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/4_2"
execute @e[name=level,scores={background=440..449}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/4_4"
execute @e[name=level,scores={background=610..619}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/6_1"
execute @e[name=level,scores={background=620..629}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/6_2"
execute @e[name=level,scores={background=630..639}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/6_3"
execute @e[name=level,scores={background=640..649}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/6_4"
execute @e[name=level,scores={background=710..719}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/7_1"
execute @e[name=level,scores={background=720..729}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/7_1"
execute @e[name=level,scores={background=730..739}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/7_1"
execute @e[name=level,scores={background=740..749}] ~~~ execute @a[tag=potionTraversing,c=-1] ~~~ loot give @s loot "level_potions/7_1"

## 检测最远的玩家是否有遍历(potionTraversing)标签，如果有了则移除掉所有的遍历标签，关闭遍历器
execute @a[c=-1] ~~~ execute @s[tag=potionTraversing] ~~~ scoreboard players set @e[name=potionTraversing] active 0

## 关闭后执行的命令
execute @e[name=potionTraversing,scores={active=0}] ~~~ tag @a remove potionTraversing

