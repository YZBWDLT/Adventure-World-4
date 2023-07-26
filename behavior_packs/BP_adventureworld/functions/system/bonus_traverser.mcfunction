# 奖励遍历器（需要循环执行）
# ----- 原理 -----
# 此遍历器重复对最近的1个玩家施加遍历标签。如此，那些被施加了遍历标签的玩家中，最远的那个一定是刚刚被施加了遍历标签的。
# 如果连全世界中最远的玩家都有了遍历标签，说明遍历完成，因此第一条命令会移除掉所有玩家的遍历标签。
# 对于本奖励遍历器而言，必须要在active.bonusTraversing=1时才能正常运行。一旦遍历结束，移除该标签以“关闭”此遍历器。

## 对所有距离最近且没有遍历标签的给予遍历标签
tag @a[c=1,tag=!bonusTraversing] add bonusTraversing

## 带有遍历标签且距离最远的即为刚加上遍历的对象，执行命令
## 此处执行的命令为给予玩家战利品
execute @e[name=level,scores={stats=110..119}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/1_1"
execute @e[name=level,scores={stats=120..129}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/1_2"
execute @e[name=level,scores={stats=130..139}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/1_3"
execute @e[name=level,scores={stats=210..219}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/2_1"
execute @e[name=level,scores={stats=220..229}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/2_2"
execute @e[name=level,scores={stats=230..239}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/2_3"
execute @e[name=level,scores={stats=310..319}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/3_1"
execute @e[name=level,scores={stats=320..329}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/3_2"
execute @e[name=level,scores={stats=330..339}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/3_3"
execute @e[name=level,scores={stats=340..349}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/3_4"
execute @e[name=level,scores={stats=410..419}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/4_1"
execute @e[name=level,scores={stats=420..429}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/4_2"
execute @e[name=level,scores={stats=430..439}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/4_3"
execute @e[name=level,scores={stats=440..449}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/4_4"
execute @e[name=level,scores={stats=610..619}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/6_1"
execute @e[name=level,scores={stats=620..629}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/6_2"
execute @e[name=level,scores={stats=630..639}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/6_3"
execute @e[name=level,scores={stats=640..649}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/6_4"
execute @e[name=level,scores={stats=710..719}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/7_1"
execute @e[name=level,scores={stats=720..729}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/7_2"
execute @e[name=level,scores={stats=730..739}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/7_3"
execute @e[name=level,scores={stats=740..749}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "levels/7_4"

execute @e[name=level,scores={stats=700..709}] ~~~ execute @a[tag=bonusTraversing,c=-1] ~~~ loot give @s loot "items/wild_sword"

## 检测最远的玩家是否有遍历(bonusTraversing)标签，如果有了则移除掉所有的遍历标签，关闭遍历器
execute @a[c=-1] ~~~ execute @s[tag=bonusTraversing] ~~~ scoreboard players set @e[name=bonusTraversing] active 0

## 关闭后执行的命令
execute @e[name=bonusTraversing,scores={active=0}] ~~~ tag @a remove bonusTraversing