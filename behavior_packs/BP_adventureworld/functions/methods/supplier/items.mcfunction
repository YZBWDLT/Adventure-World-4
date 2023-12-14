# ===== 物品供应器 =====
# 当玩家在某些关键进度无该物品时，调用此函数以给予之
# 该供应器也用于在关卡完成后直接调用以给予玩家物品

## --- 皮革头盔 ---
## 1-0给予，保留到1-3结束前 | 锁定到槽位上
execute @e[name=level,scores={background=100..130}] ~~~ replaceitem entity @a[hasitem={item=leather_helmet,quantity=0,location=slot.armor.head}] slot.armor.head 0 leather_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 皮革胸甲 ---
## 1-0给予，保留到2-3结束前 | 锁定到槽位上
execute @e[name=level,scores={background=100..230}] ~~~ replaceitem entity @a[hasitem={item=leather_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 leather_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 皮革护腿 ---
## 1-0给予，保留到2-2结束前 | 锁定到槽位上
execute @e[name=level,scores={background=100..220}] ~~~ replaceitem entity @a[hasitem={item=leather_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 leather_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 皮革靴子 ---
## 1-0给予，保留到6-4结束前 | 在1-1结束前锁定到槽位上
execute @e[name=level,scores={background=100..110}] ~~~ replaceitem entity @a[hasitem={item=leather_boots,quantity=0,location=slot.armor.legs}] slot.armor.feet 0 leather_boots 1 0 {"item_lock":{"mode":"lock_in_slot"}}
execute @e[name=level,scores={background=111..640}] ~~~ give @a[hasitem={item=leather_boots,quantity=0}] leather_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 普通剑 ---
## 1-0给予，保留到3-4结束前
execute @e[name=level,scores={background=100..340}] ~~~ give @a[hasitem={item=aw:normal_sword,quantity=0}] aw:normal_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 铁鞋 ---
## 1-1结束后给予，保留到3-2结束前
execute @e[name=level,scores={background=111..320}] ~~~ give @a[hasitem={item=aw:iron_boots,quantity=0}] aw:iron_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 绳枪 ---
## 1-2结束后给予，始终保留
## 配套给予启用准星物品
execute @e[name=level,scores={background=121..}] ~~~ give @a[hasitem={item=aw:hookshot,quantity=0}] aw:hookshot 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=121..}] ~~~ give @a[hasitem={item=aw:enable_crosshair,quantity=0}] aw:enable_crosshair 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 铁头盔 ---
## 1-3结束后给予，保留到3-1结束前 | 锁定到槽位上
execute @e[name=level,scores={background=131..310}] ~~~ replaceitem entity @a[hasitem={item=aw:iron_helmet,quantity=0,location=slot.armor.head}] slot.armor.head 0 aw:iron_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 弓 ---
## 2-1结束后给予，始终保留
execute @e[name=level,scores={background=211..}] ~~~ give @a[hasitem={item=bow,quantity=0}] bow 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 铁护腿 ---
## 2-2结束后给予，保留到4-3结束前 | 锁定到槽位上
execute @e[name=level,scores={background=221..430}] ~~~ replaceitem entity @a[hasitem={item=aw:iron_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 aw:iron_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 铁胸甲 ---
## 2-3结束后给予，保留到4-4结束前 | 锁定到槽位上
execute @e[name=level,scores={background=231..440}] ~~~ replaceitem entity @a[hasitem={item=aw:iron_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 aw:iron_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 钻石头盔 ---
## 3-1结束后给予，始终保留 | 在6-4结束后锁定到槽位上
## 补充时需要更改isHoldingHelmet.@s=0
execute @e[name=level,scores={background=311..640}] ~~~ scoreboard players set @a[hasitem={item=aw:diamond_helmet,quantity=0}] isHoldingHelmet 0
execute @e[name=level,scores={background=311..640}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_helmet,quantity=0}] slot.armor.head 0 aw:diamond_helmet 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=641..}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_helmet,quantity=0,location=slot.armor.head}] slot.armor.head 0 aw:diamond_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 钻石靴子 ---
## 3-2结束后给予，始终保留 | 在6-4结束后锁定到槽位上
## 补充时需要更改isHoldingBoots.@s=0
execute @e[name=level,scores={background=321..640}] ~~~ scoreboard players set @a[hasitem={item=aw:diamond_boots,quantity=0}] isHoldingBoots 0
execute @e[name=level,scores={background=321..640}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_boots,quantity=0}] slot.armor.feet 0 aw:diamond_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute @e[name=level,scores={background=641..}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_boots,quantity=0,location=slot.armor.feet}] slot.armor.feet 0 aw:diamond_boots 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 箭袋 ---
## 3-3结束后给予，始终保留 | 锁定到25号物品栏槽位上
## 3-3结束之前，25号槽位如果不为箭袋则改为锁定的屏障
execute @e[name=level,scores={background=100..330}] ~~~ replaceitem entity @a slot.inventory 25 barrier 1 0 {"item_lock":{"mode":"lock_in_slot"}}
execute @e[name=level,scores={background=331..}] ~~~ replaceitem entity @a[hasitem={item=aw:quiver,quantity=0,location=slot.inventory,slot=25}] slot.inventory 25 aw:quiver 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 钢剑 ---
## 3-4结束后给予，保留到6-4结束后
execute @e[name=level,scores={background=341..640}] ~~~ give @a[hasitem={item=aw:steel_sword,quantity=0}] aw:steel_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 盾 ---
## 4-1结束后给予，始终保留
execute @e[name=level,scores={background=411..}] ~~~ give @a[hasitem={item=shield,quantity=0}] shield 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## --- 火焰弓 ---
## 4-2结束后给予
## 在system/equipment_tester函数中强制给予附魔

## --- 钻石护腿 ---
## 4-3结束后给予，始终保留 | 锁定到槽位上
execute @e[name=level,scores={background=431..}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 aw:diamond_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 钻石胸甲 ---
## 4-4结束后给予，始终保留 | 锁定到槽位上
execute @e[name=level,scores={background=441..}] ~~~ replaceitem entity @a[hasitem={item=aw:diamond_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 aw:diamond_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 力量弓 ---
## 6-1结束后给予
## 在system/equipment_tester函数中强制给予附魔

## --- 旷野之剑 ---
## 7-1结束前给予，始终保留
## 设为7-1结束前是因为在动画效果中会给予旷野之剑
execute @e[name=level,scores={background=710..}] ~~~ give @a[hasitem={item=aw:wild_sword,quantity=0}] aw:wild_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
