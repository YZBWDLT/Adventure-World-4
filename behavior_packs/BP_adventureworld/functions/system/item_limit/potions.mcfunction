# ===== 药水上限 =====
# 上限函数检测所有玩家的特定物品数目。当检测到玩家有超出的药水之后设定temp.@s=1，然后完成一次性的清除工作。

## --- 治疗药水 ---
## 治疗药水的上限随关卡进度而动态变化。
execute @e[name=gameId,scores={data=111..120}] ~~~ scoreboard players set @a[hasitem={item=aw:potion_health,quantity=2..}] temp 1
execute @e[name=gameId,scores={data=121..130}] ~~~ scoreboard players set @a[hasitem={item=aw:potion_health,quantity=3..}] temp 2
execute @e[name=gameId,scores={data=131..310}] ~~~ scoreboard players set @a[hasitem={item=aw:potion_health,quantity=4..}] temp 3
execute @e[name=gameId,scores={data=311..320}] ~~~ scoreboard players set @a[hasitem={item=aw:potion_health,quantity=5..}] temp 4
execute @e[name=gameId,scores={data=321..330}] ~~~ scoreboard players set @a[hasitem={item=aw:potion_health,quantity=6..}] temp 5
execute @e[name=gameId,scores={data=331..}] ~~~ scoreboard players set @a[hasitem={item=aw:potion_health,quantity=7..}] temp 6
clear @a[scores={temp=1..6}] aw:potion_health
give @a[scores={temp=1}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[scores={temp=2}] aw:potion_health 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[scores={temp=3}] aw:potion_health 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[scores={temp=4}] aw:potion_health 4 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[scores={temp=5}] aw:potion_health 5 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a[scores={temp=6}] aw:potion_health 6 0 {"item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @a[scores={temp=!0}] temp 0

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
