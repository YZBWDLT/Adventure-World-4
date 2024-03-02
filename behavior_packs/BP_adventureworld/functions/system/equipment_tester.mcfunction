# ===== 装备检测器 =====
# 装备检测器可以将玩家的装备进行处理。
# 例如装备附魔、装备修复和装备手持检测。

# --- 装备附魔 ---

## 钻石头盔 | 3-1解锁水下呼吸III
enchant @a[hasitem={item=aw:diamond_helmet,location=slot.weapon.mainhand}] respiration 3

## 钻石靴子 | 3-2解锁深海探索者III
enchant @a[hasitem={item=aw:diamond_boots,location=slot.weapon.mainhand}] depth_strider 3

## 弓 | 2-1解锁耐久III
execute @e[name=level,scores={data=211..}] ~~~ enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] unbreaking 3

## 弓 | 4-2解锁火矢
execute @e[name=level,scores={data=421..}] ~~~ enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] flame 1

## 弓 | 6-1解锁力量V
execute @e[name=level,scores={data=611..}] ~~~ enchant @a[hasitem={item=bow,location=slot.weapon.mainhand}] power 5

# --- 装备修复 ---
# 主要用于修复皮革靴子，10秒执行1次
execute @e[name=playedSecond,scores={time=0..59,time=!1..9,time=!11..19,time=!21..29,time=!31..39,time=!41..49,time=!51..59}] ~~~ replaceitem entity @a[hasitem={item=leather_boots,location=slot.armor.feet}] slot.armor.feet 0 leather_boots

# --- 装备手持检测 ---
# 检测玩家是否手持过钻石头盔、钻石靴子，以保证玩家的装备拥有应有的附魔

## 设置标签
## 手持时设为helmetHeld和bootsHeld
tag @a[hasitem={item=aw:diamond_helmet,location=slot.weapon.mainhand}] add helmetHeld
tag @a[hasitem={item=aw:diamond_boots,location=slot.weapon.mainhand}] add bootsHeld
