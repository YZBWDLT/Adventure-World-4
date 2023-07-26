# 箭补充遍历器（需要循环执行）
# ----- 原理 -----
# 此遍历器重复对最近的1个玩家施加遍历标签。如此，那些被施加了遍历标签的玩家中，最远的那个一定是刚刚被施加了遍历标签的。
# 如果连全世界中最远的玩家都有了遍历标签，说明遍历完成，因此第一条命令会移除掉所有玩家的遍历标签。
# 对于本箭补充遍历器而言，必须要在active.arrowTraversing=1时才能正常运行。一旦遍历结束，移除该标签以“关闭”此遍历器。

## 对所有距离最近且没有遍历标签的给予遍历标签
tag @a[c=1,tag=!arrowTraversing] add arrowTraversing

## 带有遍历标签且距离最远的即为刚加上遍历的对象，执行命令
## 此处执行的命令为当玩家有弓无箭袋时，补充12根箭；有弓有箭袋时，补充36根箭
execute @a[tag=arrowTraversing,c=-1,hasitem=[{item=aw:quiver,quantity=0},{item=bow}]] ~~~ loot give @s loot "items/12_arrows"
execute @a[tag=arrowTraversing,c=-1,hasitem=[{item=aw:quiver},{item=bow}]] ~~~ loot give @s loot "items/36_arrows"

## 检测最远的玩家是否有遍历(arrowTraversing)标签，如果有了则移除掉所有的遍历标签，关闭遍历器
execute @a[c=-1] ~~~ execute @s[tag=arrowTraversing] ~~~ scoreboard players set @e[name=arrowTraversing] active 0

## 关闭后执行的命令
execute @e[name=arrowTraversing,scores={active=0}] ~~~ tag @a remove arrowTraversing