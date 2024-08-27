# ===== 药水上限 =====
# 上限函数检测所有玩家的特定物品数目。当检测到玩家有超出的药水之后设定temp.@s=1，然后完成一次性的清除工作。

## --- 药水摧毁机制 ---
## 当喝下主药水：【生长药水】【亢奋药水】【神龟药水】后，会生成一个主药水使用的标记
## 喝下主药水将代表着其它主药水的摧毁，同时将被记录下使用过药水
scoreboard players set @a[hasitem={item=aw:main_potion_used}] temp 1
clear @a[scores={temp=1}] aw:main_potion_used
clear @a[scores={temp=1}] aw:potion_growth
clear @a[scores={temp=1}] aw:potion_thrill
clear @a[scores={temp=1}] aw:potion_turtle
execute @a[scores={temp=1}] ~~~ playsound random.glass @s
execute @a[scores={temp=1}] ~~~ tag @s add potionUsed
scoreboard players set @a[scores={temp=!0}] temp 0

## 当喝下副药水：【重生药水】【净化药水】【休眠药水】后，会生成一个副药水使用的标记
## 喝下副药水将代表着将被记录下使用过药水
scoreboard players set @a[hasitem={item=aw:vice_potion_used}] temp 1
clear @a[scores={temp=1}] aw:vice_potion_used
execute @a[scores={temp=1}] ~~~ tag @s add potionUsed
scoreboard players set @a[scores={temp=!0}] temp 0

scoreboard players set @a[hasitem={item=bread}] temp 1
clear @a[scores={temp=1}] bread
effect @a[scores={temp=1}] instant_health 1 1 true
scoreboard players set @a[scores={temp=!0}] temp 0
