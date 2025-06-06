# ===== 物品控制器 =====
# 每秒执行一次。
# 防止玩家因为在关键进度没有某些物品而导致卡关。
# 控制物品上限，防止玩家拥有过多物品。
# 重新设置物品的耐久，防止物品因为耐久过低导致损坏。

# --- 掉落物清理 ---
execute if score allowRemoveItemEntity data matches 1 run kill @e[type=item]

# --- 上限检测 ---
# 如果玩家拥有下面的两种以上的物品，则清除之。

## 皮革头盔
clear @a[hasitem={item=leather_helmet,quantity=2..}] leather_helmet
## 皮革胸甲
clear @a[hasitem={item=leather_chestplate,quantity=2..}] leather_chestplate
## 皮革护腿
clear @a[hasitem={item=leather_leggings,quantity=2..}] leather_leggings
## 皮革靴子
clear @a[hasitem={item=leather_boots,quantity=2..}] leather_boots
## 铁头盔
clear @a[hasitem={item=aw:iron_helmet,quantity=2..}] aw:iron_helmet
## 铁胸甲
clear @a[hasitem={item=aw:iron_chestplate,quantity=2..}] aw:iron_chestplate
## 铁护腿
clear @a[hasitem={item=aw:iron_leggings,quantity=2..}] aw:iron_leggings
## 铁靴子
clear @a[hasitem={item=aw:iron_boots,quantity=2..}] aw:iron_boots
## 钻石头盔
clear @a[hasitem={item=aw:diamond_helmet,quantity=2..}] aw:diamond_helmet
## 钻石胸甲
clear @a[hasitem={item=aw:diamond_chestplate,quantity=2..}] aw:diamond_chestplate
## 钻石护腿
clear @a[hasitem={item=aw:diamond_leggings,quantity=2..}] aw:diamond_leggings
## 钻石靴子
clear @a[hasitem={item=aw:diamond_boots,quantity=2..}] aw:diamond_boots
## 普通剑
clear @a[hasitem={item=aw:normal_sword,quantity=2..}] aw:normal_sword
## 御风珠
clear @a[hasitem={item=aw:wind_pearl,quantity=17..}] aw:wind_pearl
## 弓
clear @a[hasitem={item=bow,quantity=2..}] bow
## 箭袋
clear @a[hasitem={item=aw:quiver,quantity=2..}] aw:quiver
## 钢剑
clear @a[hasitem={item=aw:steel_sword,quantity=2..}] aw:steel_sword
## 盾
clear @a[hasitem={item=shield,quantity=2..}] shield
## 旷野之剑
clear @a[hasitem={item=aw:wild_sword,quantity=2..}] aw:wild_sword

# --- 供应缺少的物品 ---

## 获取游戏 ID
function aw/lib/get_data/game_id

## 获取在特定关卡信息下，玩家是否拥有物品，如果没有则重置
### 皮革头盔 | 1-0 ~ 1-3结束前，锁定到槽位上
execute if score temp.gameId data matches 100..130 run replaceitem entity @a[hasitem={item=leather_helmet,quantity=0,location=slot.armor.head}] slot.armor.head 0 leather_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 皮革胸甲 | 1-0 ~ 2-3结束前，锁定到槽位上
execute if score temp.gameId data matches 100..230 run replaceitem entity @a[hasitem={item=leather_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 leather_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 皮革护腿 | 1-0 ~ 2-2结束前，锁定到槽位上
execute if score temp.gameId data matches 100..220 run replaceitem entity @a[hasitem={item=leather_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 leather_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 皮革靴子 | 1-0 ~ 6-4结束前，在1-1结束前锁定到槽位上
execute if score temp.gameId data matches 100..110 run replaceitem entity @a[hasitem={item=leather_boots,quantity=0,location=slot.armor.feet}] slot.armor.feet 0 leather_boots 1 0 {"item_lock":{"mode":"lock_in_slot"}}
execute if score temp.gameId data matches 111..640 run give @a[hasitem={item=leather_boots,quantity=0}] leather_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
### 普通剑 | 1-0 ~ 3-4结束前
execute if score temp.gameId data matches 100..340 run give @a[hasitem={item=aw:normal_sword,quantity=0}] aw:normal_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
### 传声石晶体 | 允许传声石结晶时
execute if score allowAcousticStoneCrystal data matches 1 run give @a[hasitem={item=aw:acoustic_stone_crystal,quantity=0}] aw:acoustic_stone_crystal 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
### 铁靴子 | 1-1结束后 ~ 3-2结束前
execute if score temp.gameId data matches 111..320 run give @a[hasitem={item=aw:iron_boots,quantity=0}] aw:iron_boots 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
### 御风珠 | 1-2结束后 ~
execute if score temp.gameId data matches 121..999 run give @a[hasitem={item=aw:wind_pearl,quantity=0}] aw:wind_pearl 16 0 {"item_lock":{"mode":"lock_in_inventory"}}
### 铁头盔 | 1-3结束后 ~ 3-1结束前，锁定到槽位上
execute if score temp.gameId data matches 131..310 run replaceitem entity @a[hasitem={item=aw:iron_helmet,quantity=0,location=slot.armor.head}] slot.armor.head 0 aw:iron_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 弓 | 2-1结束后 ~，附魔耐久III
execute if score temp.gameId data matches 211..999 run give @a[hasitem={item=bow,quantity=0}] bow 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score temp.gameId data matches 211.. run enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] unbreaking 3
### 铁护腿 | 2-2结束后 ~ 4-3结束前，锁定到槽位上
execute if score temp.gameId data matches 221..430 run replaceitem entity @a[hasitem={item=aw:iron_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 aw:iron_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 铁胸甲 | 2-3结束后 ~ 4-4结束前，锁定到槽位上
execute if score temp.gameId data matches 231..440 run replaceitem entity @a[hasitem={item=aw:iron_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 aw:iron_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 钻石头盔 | 3-1结束后 ~，锁定到槽位上
execute if score temp.gameId data matches 311..640 run clear @a[hasitem=[{item=aw:diamond_helmet,quantity=0,location=slot.armor.head}]] aw:diamond_helmet
execute if score temp.gameId data matches 311..640 run loot replace entity @a[hasitem=[{item=aw:diamond_helmet,quantity=0,location=slot.armor.head}]] slot.armor.head 0 loot "diamond_helmet"
execute if score temp.gameId data matches 641..999 run replaceitem entity @a[hasitem=[{item=aw:diamond_helmet,quantity=0,location=slot.armor.head}]] slot.armor.head 0 aw:diamond_helmet 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 钻石靴子 | 3-2结束后 ~，6-4结束后锁定到槽位上
execute if score temp.gameId data matches 321..640 run loot give @a[hasitem=[{item=aw:diamond_boots,quantity=0,location=slot.armor.feet}]] loot "diamond_boots"
execute if score temp.gameId data matches 641..999 run replaceitem entity @a[hasitem=[{item=aw:diamond_boots,quantity=0,location=slot.armor.feet}]] slot.armor.feet 0 aw:diamond_boots 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 箭袋 | 3-3结束后 ~，锁定到第25号物品栏槽位上，3-3结束前锁定为屏障
execute if score temp.gameId data matches !331..999 run replaceitem entity @a[hasitem={item=barrier,quantity=0,location=slot.inventory,slot=25}] slot.inventory 25 barrier 1 0 {"item_lock":{"mode":"lock_in_slot"}}
execute if score temp.gameId data matches 331..999 run replaceitem entity @a[hasitem={item=aw:quiver,quantity=0,location=slot.inventory,slot=25}] slot.inventory 25 aw:quiver 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 钢剑 | 3-4结束后 ~ 6-4结束前
execute if score temp.gameId data matches 341..640 run give @a[hasitem={item=aw:steel_sword,quantity=0}] aw:steel_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
### 盾 | 4-1结束后 ~，耐久度不满的时候每分钟重新设置一次耐久
execute if score temp.gameId data matches 411..999 run give @a[hasitem={item=shield,quantity=0}] shield 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
### 火焰弓 | 4-2结束后 ~，施加附魔火矢
execute if score temp.gameId data matches 421.. run enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] flame 1
### 钻石护腿 | 2-2结束后 ~ 4-3结束前，锁定到槽位上
execute if score temp.gameId data matches 431..999 run replaceitem entity @a[hasitem={item=aw:diamond_leggings,quantity=0,location=slot.armor.legs}] slot.armor.legs 0 aw:diamond_leggings 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 钻石胸甲 | 2-3结束后 ~ 4-4结束前，锁定到槽位上
execute if score temp.gameId data matches 441..999 run replaceitem entity @a[hasitem={item=aw:diamond_chestplate,quantity=0,location=slot.armor.chest}] slot.armor.chest 0 aw:diamond_chestplate 1 0 {"item_lock":{"mode":"lock_in_slot"}}
### 力量弓 | 6-1结束后 ~，施加附魔力量V
execute if score temp.gameId data matches 611.. run enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] power 5
### 旷野之剑 | 7-1结束前 ~，
execute if score temp.gameId data matches 710..999 run give @a[hasitem={item=aw:wild_sword,quantity=0}] aw:wild_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

## 每隔1分钟，重置具有耐久度限制的非满耐久物品的耐久
### 皮革靴子 | 1-1结束后 ~ 6-4结束前，仅限穿着时
execute if score playedSecond time matches 0 if score temp.gameId data matches 111..640 as @a[hasitem={item=leather_boots,location=slot.armor.feet}] unless entity @s[hasitem={item=leather_boots,location=slot.armor.feet,data=0}] run replaceitem entity @s slot.armor.feet 0 leather_boots
### 盾 | 4-1结束后 ~，仅限手持时
execute if score playedSecond time matches 0 if score temp.gameId data matches 411.. as @a[hasitem={item=shield,location=slot.weapon.offhand}] unless entity @s[hasitem={item=shield,location=slot.weapon.offhand,data=0}] run replaceitem entity @s slot.weapon.offhand 0 shield
execute if score playedSecond time matches 0 if score temp.gameId data matches 411.. as @a[hasitem={item=shield,location=slot.weapon.mainhand}] unless entity @s[hasitem={item=shield,location=slot.weapon.mainhand,data=0}] run replaceitem entity @s slot.weapon.mainhand 0 shield

## 移除备用变量
scoreboard players reset temp.gameId data
