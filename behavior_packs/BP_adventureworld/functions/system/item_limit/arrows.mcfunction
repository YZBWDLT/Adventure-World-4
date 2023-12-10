# ===== 箭上限设置 =====
# 本函数规范了玩家的箭上限的设置。循环执行。

## --- 当玩家超限后，temp.@s=1 ---

### 无弓 - 有箭
scoreboard players set @a[hasitem=[{item=bow,quantity=0},{item=arrow}]] temp 1
### 有弓无箭袋 - >=13箭
scoreboard players set @a[hasitem=[{item=bow},{item=aw:quiver,quantity=0},{item=arrow,quantity=13..}]] temp 1
### 有弓有箭袋 - >=37箭
scoreboard players set @a[hasitem=[{item=bow},{item=aw:quiver},{item=arrow,quantity=37..}]] temp 1

## --- 清除超限玩家的所有箭 ---
clear @a[scores={temp=1}] arrow

## --- 给予超限玩家最大限制数目的箭 ---

### 无弓 - 屏障
replaceitem entity @a[scores={temp=1},hasitem={item=bow,quantity=0}] slot.inventory 26 barrier 1 0 {"item_lock": { "mode": "lock_in_slot" } }
### 有弓无箭袋 - 12箭
replaceitem entity @a[scores={temp=1},hasitem=[{item=bow},{item=aw:quiver,quantity=0}]] slot.inventory 26 arrow 12 0 {"item_lock": { "mode": "lock_in_slot" } }
### 有弓有箭袋 - 36箭
replaceitem entity @a[scores={temp=1},hasitem=[{item=bow},{item=aw:quiver}]] slot.inventory 26 arrow 36 0 {"item_lock": { "mode": "lock_in_slot" } }

## --- 当玩家箭耗尽时，切换为屏障 ---
replaceitem entity @a[hasitem=[{item=bow},{item=arrow,quantity=0},{item=barrier,quantity=0,location=slot.inventory,slot=26}]] slot.inventory 26 barrier 1 0 {"item_lock":{"mode":"lock_in_slot"}}

## --- 规范temp.@s=0 ---
scoreboard players set @a[scores={temp=!0}] temp 0
