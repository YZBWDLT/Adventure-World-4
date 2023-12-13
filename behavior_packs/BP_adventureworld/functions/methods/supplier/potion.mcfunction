# ===== 药水供应器 =====
# 当玩家在特殊的进度的时候，如果在调用此函数时玩家缺少这样的药水，则进行给予

## --- 治疗药水 ---
## 1-1，1-2，1-3，3-1，3-2，3-3分别给予1瓶

### 在某关结束后到下一次该药水上限增加的关卡结束前，上限为L
### 当玩家剩余X瓶时，给予L-X瓶治疗药水
execute @e[name=level,scores={background=111..120}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=0}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=level,scores={background=121..130}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=0}] aw:potion_health 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=121..130}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=1}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=level,scores={background=131..310}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=0}] aw:potion_health 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=131..310}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=1}] aw:potion_health 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=131..310}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=2}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=level,scores={background=311..320}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=0}] aw:potion_health 4 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=311..320}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=1}] aw:potion_health 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=311..320}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=2}] aw:potion_health 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=311..320}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=3}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=level,scores={background=321..330}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=0}] aw:potion_health 5 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=321..330}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=1}] aw:potion_health 4 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=321..330}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=2}] aw:potion_health 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=321..330}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=3}] aw:potion_health 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=321..330}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=4}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=level,scores={background=331..}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=0}] aw:potion_health 6 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=331..}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=1}] aw:potion_health 5 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=331..}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=2}] aw:potion_health 4 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=331..}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=3}] aw:potion_health 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=331..}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=4}] aw:potion_health 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=331..}] ~~~ give @a[hasitem={item=aw:potion_health,quantity=5}] aw:potion_health 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 生长药水 & 亢奋药水 & 神龟药水 ---
## 均在2-3给予
execute @e[name=level,scores={background=231..}] ~~~ give @a[hasitem={item=aw:potion_growth,quantity=0}] aw:potion_growth 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=231..}] ~~~ give @a[hasitem={item=aw:potion_thrill,quantity=0}] aw:potion_thrill 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=231..}] ~~~ give @a[hasitem={item=aw:potion_turtle,quantity=0}] aw:potion_turtle 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 重生药水 ---
## 4-1给予
execute @e[name=level,scores={background=411..}] ~~~ give @a[hasitem={item=aw:potion_rebirth,quantity=0}] aw:potion_rebirth 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 净化药水 ---
## 4-2给予
execute @e[name=level,scores={background=421..}] ~~~ give @a[hasitem={item=aw:potion_purification,quantity=0}] aw:potion_purification 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 休眠药水 ---
## 4-3给予
execute @e[name=level,scores={background=431..}] ~~~ give @a[hasitem={item=aw:potion_hibernation,quantity=0}] aw:potion_hibernation 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
