# ===== 给予物品 =====
# 在开始游戏之前，提前给予物品

# 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 10  |
# 1-1 | 1-2 | 1-3 | 2-1 | 2-2 | 2-3 | 3-1 | 3-2 | 3-3 | 3-4 |
# 11  | 12  | 13  | 14  | 15  | 16  | 17  | 18  | 19  | 20  |
# 4-1 | 4-2 | 4-3 | 4-4 | 6-1 | 6-2 | 6-3 | 6-4 | 7-1 | 7-2 |
# 21  | 22  | 23  |
# 7-3 | 7-4 | 7-5 |

# 皮革头盔 | 1-0 ~ 1-3结束前，锁定到槽位上
execute if score temp.level settings matches 1..3 run replaceitem entity @a[hasitem={item=leather_helmet,quantity=0,location=slot.armor.head}] slot.armor.head 0 leather_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# 铁头盔 | 1-3结束后 ~ 3-1结束前，锁定到槽位上
execute if score temp.level settings matches 4..7 run replaceitem entity @a[hasitem={item=aw:iron_helmet,quantity=0,location=slot.armor.head}] slot.armor.head 0 aw:iron_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# 钻石头盔 | 3-1结束后 ~，锁定到槽位上
execute if score temp.level settings matches 8..18 run clear @a[hasitem=[{item=aw:diamond_helmet,quantity=0,location=slot.armor.head}]] aw:diamond_helmet
execute if score temp.level settings matches 8..18 run loot replace entity @a[hasitem=[{item=aw:diamond_helmet,quantity=0,location=slot.armor.head}]] slot.armor.head 0 loot "diamond_helmet"
execute if score temp.level settings matches 19..23 run replaceitem entity @a[hasitem=[{item=aw:diamond_helmet,quantity=0,location=slot.armor.head}]] slot.armor.head 0 aw:diamond_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}

# 皮革胸甲 | 1-0 ~ 2-3结束前，锁定到槽位上
execute if score temp.level settings matches 1..6 run replaceitem entity @a[hasitem={item=leather_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 leather_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# 铁胸甲 | 2-3结束后 ~ 4-4结束前，锁定到槽位上
execute if score temp.level settings matches 7..14 run replaceitem entity @a[hasitem={item=aw:iron_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 aw:iron_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# 钻石胸甲 | 2-3结束后 ~ 4-4结束前，锁定到槽位上
execute if score temp.level settings matches 15..23 run replaceitem entity @a[hasitem={item=aw:diamond_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 aw:diamond_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}

# 皮革护腿 | 1-0 ~ 2-2结束前，锁定到槽位上
execute if score temp.level settings matches 1..5 run replaceitem entity @a[hasitem={item=leather_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 leather_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# 铁护腿 | 2-2结束后 ~ 4-3结束前，锁定到槽位上
execute if score temp.level settings matches 6..13 run replaceitem entity @a[hasitem={item=aw:iron_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 aw:iron_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# 钻石护腿 | 2-2结束后 ~ 4-3结束前，锁定到槽位上
execute if score temp.level settings matches 14..23 run replaceitem entity @a[hasitem={item=aw:diamond_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 aw:diamond_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}

# 皮革靴子 | 1-0 ~ 6-4结束前
execute if score temp.level settings matches 1 run replaceitem entity @a[hasitem={item=leather_boots,quantity=0,location=slot.armor.feet}] slot.armor.feet 0 leather_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.level settings matches 2..18 run give @a[hasitem={item=leather_boots,quantity=0}] leather_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
# 铁靴子 | 1-1结束后 ~ 3-2结束前
execute if score temp.level settings matches 2..8 run give @a[hasitem={item=aw:iron_boots,quantity=0}] aw:iron_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
# 钻石靴子 | 3-2结束后 ~，6-4结束后锁定到槽位上
execute if score temp.level settings matches 9..18 run loot give @a[hasitem=[{item=aw:diamond_boots,quantity=0}]] loot "diamond_boots"
execute if score temp.level settings matches 19..23 run replaceitem entity @a[hasitem=[{item=aw:diamond_boots,quantity=0,location=slot.armor.feet}]] slot.armor.feet 0 aw:diamond_boots 1 0 {"item_lock":{"mode":"lock_in_slot"}}

# 普通剑 | 1-0 ~ 3-4结束前
execute if score temp.level settings matches 1..10 run give @a[hasitem={item=aw:normal_sword,quantity=0}] aw:normal_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
# 钢剑 | 3-4结束后 ~ 6-4结束前
execute if score temp.level settings matches 11..18 run give @a[hasitem={item=aw:steel_sword,quantity=0}] aw:steel_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
# 旷野之剑 | 7-1结束前 ~，
execute if score temp.level settings matches 19..23 run give @a[hasitem={item=aw:wild_sword,quantity=0}] aw:wild_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}


# 御风珠 | 1-2结束后 ~
execute if score temp.level settings matches 3..23 run give @a[hasitem={item=aw:wind_pearl,quantity=0}] aw:wind_pearl 16 0 {"item_lock":{"mode":"lock_in_inventory"}}
# 弓 | 2-1结束后 ~，附魔耐久III
execute if score temp.level settings matches 5..23 run give @a[hasitem={item=bow,quantity=0}] bow 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
# 箭袋 | 3-3结束后 ~，锁定到第25号物品栏槽位上，3-3结束前锁定为屏障
execute if score temp.level settings matches 10..23 run replaceitem entity @a[hasitem={item=aw:quiver,quantity=0,location=slot.inventory,slot=25}] slot.inventory 25 aw:quiver 1 0 {"item_lock":{"mode":"lock_in_slot"}}
# 盾 | 4-1结束后 ~，耐久度不满的时候每分钟重新设置一次耐久
execute if score temp.level settings matches 12..23 run give @a[hasitem={item=shield,quantity=0}] shield 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
