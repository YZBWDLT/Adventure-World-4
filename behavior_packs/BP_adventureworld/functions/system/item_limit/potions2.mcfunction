# ===== 药水上限 =====
# 上限函数检测所有玩家的特定物品数目。当检测到玩家有超出的药水之后设定temp.@s=1，然后完成一次性的清除工作。

## --- 药水摧毁机制 ---
## 当喝下主药水：【生长药水】【亢奋药水】【神龟药水】后，会生成一个玻璃瓶
## 喝下主药水将代表着其它主药水的摧毁
scoreboard players set @a[hasitem={item=glass_bottle}] temp 1
clear @a[scores={temp=1}] glass_bottle
clear @a[scores={temp=1}] aw:potion_growth
clear @a[scores={temp=1}] aw:potion_thrill
clear @a[scores={temp=1}] aw:potion_turtle
execute @a[scores={temp=1}] ~~~ playsound random.glass @s
scoreboard players set @a[scores={temp=!0}] temp 0

scoreboard players set @a[hasitem={item=bread}] temp 1
clear @a[scores={temp=1}] bread
effect @a[scores={temp=1}] instant_health 1 1 true
scoreboard players set @a[scores={temp=!0}] temp 0
