# ===== 药水上限 =====
# 上限函数检测所有玩家的特定物品数目。当检测到玩家有超出的药水之后设定temp.@s=1，然后完成一次性的清除工作。

## --- 治疗药水 ---
## 治疗药水的上限随关卡进度而动态变化。
scoreboard players set @a[hasitem={item=aw:potion_health,quantity=7..}] temp 1
clear @a[scores={temp=1}] aw:potion_health
give @a[scores={temp=1}] aw:potion_health 6 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 其它药水 ---
## 其它药水的上限始终为1。

### 生长药水
scoreboard players set @a[hasitem={item=aw:potion_growth,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:potion_growth
give @a[scores={temp=1}] aw:potion_growth 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a[scores={temp=!0}] temp 0
### 亢奋药水
scoreboard players set @a[hasitem={item=aw:potion_thrill,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:potion_thrill
give @a[scores={temp=1}] aw:potion_thrill 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a[scores={temp=!0}] temp 0
### 神龟药水
scoreboard players set @a[hasitem={item=aw:potion_turtle,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:potion_turtle
give @a[scores={temp=1}] aw:potion_turtle 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a[scores={temp=!0}] temp 0
### 重生药水
scoreboard players set @a[hasitem={item=aw:potion_rebirth,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:potion_rebirth
give @a[scores={temp=1}] aw:potion_rebirth 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a[scores={temp=!0}] temp 0
### 净化药水
scoreboard players set @a[hasitem={item=aw:potion_purification,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:potion_purification
give @a[scores={temp=1}] aw:potion_purification 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a[scores={temp=!0}] temp 0
### 休眠药水
scoreboard players set @a[hasitem={item=aw:potion_hibernation,quantity=2..}] temp 1
clear @a[scores={temp=1}] aw:potion_hibernation
give @a[scores={temp=1}] aw:potion_hibernation 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a[scores={temp=!0}] temp 0

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
