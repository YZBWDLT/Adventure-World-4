# ===== 事件：供应药水 =====
# 为玩家供应药水
# 调用此方法时：只能由aw/system/controller/potions执行，需修饰执行者为应补充药水的玩家（execute as @a[...]）。

## 治疗药水 | 给予有X瓶药水的玩家L-X瓶，使其达到上限值
execute if score temp.potionHealthLimit data matches 1..6 run give @s[hasitem={item=aw:potion_health,quantity=0}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.potionHealthLimit data matches 2..6 run give @s[hasitem={item=aw:potion_health,quantity=1}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.potionHealthLimit data matches 3..6 run give @s[hasitem={item=aw:potion_health,quantity=2}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.potionHealthLimit data matches 4..6 run give @s[hasitem={item=aw:potion_health,quantity=3}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.potionHealthLimit data matches 5..6 run give @s[hasitem={item=aw:potion_health,quantity=4}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.potionHealthLimit data matches 6 run give @s[hasitem={item=aw:potion_health,quantity=5}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## 生长药水 & 亢奋药水 & 神龟药水 | 均在2-3给予
execute if score temp.gameId data matches 231..999 run give @s[hasitem={item=aw:potion_growth,quantity=0}] aw:potion_growth 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.gameId data matches 231..999 run give @s[hasitem={item=aw:potion_thrill,quantity=0}] aw:potion_thrill 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.gameId data matches 231..999 run give @s[hasitem={item=aw:potion_turtle,quantity=0}] aw:potion_turtle 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## 重生药水 | 4-1给予
execute if score temp.gameId data matches 411..999 run give @s[hasitem={item=aw:potion_rebirth,quantity=0}] aw:potion_rebirth 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## 净化药水 | 4-2给予
execute if score temp.gameId data matches 421..999 run give @s[hasitem={item=aw:potion_purification,quantity=0}] aw:potion_purification 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
## 休眠药水 | 4-3给予
execute if score temp.gameId data matches 431..999 run give @s[hasitem={item=aw:potion_hibernation,quantity=0}] aw:potion_hibernation 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
