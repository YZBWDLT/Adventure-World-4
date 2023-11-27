# 重要物品检测器

## --- 清除重复物品 ---

### 皮革盔甲
clear @a[hasitem={item=leather_helmet,quantity=2..}] leather_helmet
clear @a[hasitem={item=leather_chestplate,quantity=2..}] leather_chestplate
clear @a[hasitem={item=leather_leggings,quantity=2..}] leather_leggings
clear @a[hasitem={item=leather_boots,quantity=2..}] leather_boots
### 铁盔甲
clear @a[hasitem={item=aw:iron_helmet,quantity=2..}] aw:iron_helmet
clear @a[hasitem={item=aw:iron_chestplate,quantity=2..}] aw:iron_chestplate
clear @a[hasitem={item=aw:iron_leggings,quantity=2..}] aw:iron_leggings
clear @a[hasitem={item=aw:iron_boots,quantity=2..}] aw:iron_boots
### 钻石盔甲
clear @a[hasitem={item=aw:diamond_helmet,quantity=2..}] aw:diamond_helmet
clear @a[hasitem={item=aw:diamond_chestplate,quantity=2..}] aw:diamond_chestplate
clear @a[hasitem={item=aw:diamond_leggings,quantity=2..}] aw:diamond_leggings
clear @a[hasitem={item=aw:diamond_boots,quantity=2..}] aw:diamond_boots
### 剑&弓
clear @a[hasitem={item=aw:normal_sword,quantity=2..}] aw:normal_sword
clear @a[hasitem={item=aw:steel_sword,quantity=2..}] aw:steel_sword
clear @a[hasitem={item=aw:wild_sword,quantity=2..}] aw:wild_sword
clear @a[hasitem={item=bow,quantity=2..}] bow
### 脊柱之盾
clear @a[hasitem={item=shield,quantity=2..}] shield
### 绳枪
clear @a[hasitem={item=aw:hookshot,quantity=2..}] aw:hookshot
clear @a[hasitem={item=aw:enable_crosshair,quantity=2..}] aw:enable_crosshair
### 箭袋
clear @a[hasitem={item=aw:quiver,quantity=2..}] aw:quiver

## --- 无物品时，给予其物品 ---

### 皮革盔甲 | 1-0~1-3，皮革靴子1-0~4-4
execute @e[name=level,scores={background=100..130}] ~~~ replaceitem entity @a[hasitem={item=leather_helmet,quantity=0}] slot.armor.head 0 leather_helmet 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute @e[name=level,scores={background=100..130}] ~~~ replaceitem entity @a[hasitem={item=leather_chestplate,quantity=0}] slot.armor.chest 0 leather_chestplate 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute @e[name=level,scores={background=100..130}] ~~~ replaceitem entity @a[hasitem={item=leather_leggings,quantity=0}] slot.armor.legs 0 leather_leggings 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute @e[name=level,scores={background=100..440}] ~~~ replaceitem entity @a[hasitem={item=leather_boots,quantity=0}] slot.armor.feet 0 leather_boots 1 0 {"item_lock": { "mode": "lock_in_inventory" } }
### 绳枪 | 1-2通关后~
execute @e[name=level,scores={background=121..}] ~~~ give @a[hasitem={item=aw:hookshot,quantity=0}] aw:hookshot 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={background=121..}] ~~~ give @a[hasitem={item=aw:enable_crosshair,quantity=0}] aw:enable_crosshair 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
### 铁盔甲 | 1-3通关后~3-1（头盔） 3-2（靴子） 4-3（护腿） 4-4（胸甲）
execute @e[name=level,scores={background=131..310}] ~~~ replaceitem entity @a[hasitem={item=aw:iron_helmet,quantity=0}] slot.armor.head 0 aw:iron_helmet 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute @e[name=level,scores={background=131..440}] ~~~ replaceitem entity @a[hasitem={item=aw:iron_chestplate,quantity=0}] slot.armor.chest 0 aw:iron_chestplate 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute @e[name=level,scores={background=131..430}] ~~~ replaceitem entity @a[hasitem={item=aw:iron_leggings,quantity=0}] slot.armor.legs 0 aw:iron_leggings 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute @e[name=level,scores={background=131..320}] ~~~ replaceitem entity @a[hasitem={item=aw:iron_boots,quantity=0}] slot.armor.feet 0 aw:iron_boots 1 0 {"item_lock": { "mode": "lock_in_inventory" } }
### 普通剑 | 1-0~2-3
execute @e[name=level,scores={background=100..230}] ~~~ give @a[hasitem={item=aw:normal_sword,quantity=0}] aw:normal_sword 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
### 钢剑 | 2-3通关后~6-4
execute @e[name=level,scores={background=231..640}] ~~~ give @a[hasitem={item=aw:steel_sword,quantity=0}] aw:steel_sword 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
### 弓 | 2-1通关后~
execute @e[name=level,scores={background=211..}] ~~~ give @a[hasitem={item=bow,quantity=0}] bow 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
### 钻石盔甲 | 3-1通关后~（头盔） 3-2通关后~（靴子） 4-3通关后~（护腿） 4-4通关后~（胸甲）
### 在补偿前，先提醒玩家手持一次钻石头盔和钻石靴子

execute @e[name=level,scores={background=311..}] ~~~ scoreboard players set @a[hasitem={item=aw:diamond_helmet,quantity=0}] isHoldingHelmet 0
execute @e[name=level,scores={background=321..}] ~~~ scoreboard players set @a[hasitem={item=aw:diamond_boots,quantity=0}] isHoldingBoots 0

execute @e[name=level,scores={background=311..}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_helmet,quantity=0}] slot.armor.head 0 aw:diamond_helmet 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=level,scores={background=441..}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_chestplate,quantity=0}] slot.armor.chest 0 aw:diamond_chestplate 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute @e[name=level,scores={background=431..}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_leggings,quantity=0}] slot.armor.legs 0 aw:diamond_leggings 1 0 {"item_lock": { "mode": "lock_in_slot" } }
execute @e[name=level,scores={background=321..}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_boots,quantity=0}] slot.armor.feet 0 aw:diamond_boots 1 0 {"item_lock": { "mode": "lock_in_inventory" } }

### 脊柱之盾 | 3-4通关后~
execute @e[name=level,scores={background=341..}] ~~~ give @a[hasitem={item=shield,quantity=0}] shield 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
### 箭袋 | 4-2通关后~
execute @e[name=level,scores={background=421..}] ~~~ give @a[hasitem={item=aw:quiver,quantity=0}] aw:quiver 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
### 旷野之剑 | 7-1~
execute @e[name=level,scores={background=710..}] ~~~ give @a[hasitem={item=aw:wild_sword,quantity=0}] aw:wild_sword 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
