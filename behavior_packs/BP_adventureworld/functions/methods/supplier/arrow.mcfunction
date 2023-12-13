# ===== 箭供应器 =====
# 当无箭袋的玩家少于11根箭，或有箭袋的玩家少于35根箭时
# 在合适的时间段调用此函数即可按需补充合理数目的箭

## --- 清除当前场上的箭 ---
kill @e[type=arrow]

## --- 清除玩家背包里的箭 ---
clear @a arrow

## --- 当玩家无弓时，在第26号槽位替换为屏障 ---
replaceitem entity @a[hasitem={item=bow,quantity=0}] slot.inventory 26 barrier 1 0 {"item_lock": { "mode": "lock_in_slot" } }

## --- 当玩家有弓无箭袋时，在第26号槽位替换为12根箭 ---
replaceitem entity @a[hasitem=[{item=bow},{item=aw:quiver,quantity=0}]] slot.inventory 26 arrow 12 0 {"item_lock": { "mode": "lock_in_slot" } }

## --- 当玩家有弓有箭袋时，给予36根箭 ---
replaceitem entity @a[hasitem=[{item=bow},{item=aw:quiver}]] slot.inventory 26 arrow 36 0 {"item_lock": { "mode": "lock_in_slot" } }
