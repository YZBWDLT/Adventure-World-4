# ===== 药水供应器 =====
# 当玩家在特殊的进度的时候，如果在调用此函数时玩家缺少这样的药水，则进行给予

## --- 生命药水 I ---
execute @e[name=level,scores={background=111..210}] ~~~ give @a[hasitem={item=aw:health_potion_1,quantity=0}] aw:health_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=level,scores={background=211..310}] ~~~ give @a[hasitem={item=aw:health_potion_1,quantity=0}] aw:health_potion_1 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=211..310}] ~~~ give @a[hasitem={item=aw:health_potion_1,quantity=1}] aw:health_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=level,scores={background=311..}] ~~~ give @a[hasitem={item=aw:health_potion_1,quantity=0}] aw:health_potion_1 3 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=311..}] ~~~ give @a[hasitem={item=aw:health_potion_1,quantity=1}] aw:health_potion_1 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=311..}] ~~~ give @a[hasitem={item=aw:health_potion_1,quantity=2}] aw:health_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 生命药水 II ---
execute @e[name=level,scores={background=221..410}] ~~~ give @a[hasitem={item=aw:health_potion_2,quantity=0}] aw:health_potion_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

execute @e[name=level,scores={background=411..}] ~~~ give @a[hasitem={item=aw:health_potion_2,quantity=0}] aw:health_potion_2 2 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=411..}] ~~~ give @a[hasitem={item=aw:health_potion_2,quantity=1}] aw:health_potion_2 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 其他药水 ---
execute @e[name=level,scores={background=121..610}] ~~~ give @a[hasitem={item=aw:regeneration_potion_1,quantity=0}] aw:regeneration_potion_1 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={background=611..}] ~~~ give @a[hasitem={item=aw:regeneration_potion_2,quantity=0}] aw:regeneration_potion_2 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

execute @e[name=level,scores={background=131..420}] ~~~ give @a[hasitem={item=aw:resistance_potion_1,quantity=0}] aw:resistance_potion_1 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={background=421..}] ~~~ give @a[hasitem={item=aw:resistance_potion_2,quantity=0}] aw:resistance_potion_2 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

execute @e[name=level,scores={background=231..440}] ~~~ give @a[hasitem={item=aw:health_boost_potion_1,quantity=0}] aw:health_boost_potion_1 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={background=441..}] ~~~ give @a[hasitem={item=aw:health_boost_potion_2,quantity=0}] aw:health_boost_potion_2 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

execute @e[name=level,scores={background=321..620}] ~~~ give @a[hasitem={item=aw:boost_potion_1,quantity=0}] aw:boost_potion_1 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={background=621..}] ~~~ give @a[hasitem={item=aw:boost_potion_2,quantity=0}] aw:boost_potion_2 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

execute @e[name=level,scores={background=341..640}] ~~~ give @a[hasitem={item=aw:strength_potion_1,quantity=0}] aw:strength_potion_1 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={background=641..}] ~~~ give @a[hasitem={item=aw:strength_potion_2,quantity=0}] aw:strength_potion_2 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
