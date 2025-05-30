# ===== 供应箭 =====
# 为没有箭的玩家供应箭（锁死在物品栏 26 号槽位）
# 调用此方法时：需修饰执行者为应补充箭的玩家（execute as @a[...]）。

## 清除超限玩家的箭，并按照允许的上限给予箭
clear @s arrow
### 有弓无箭袋时：设为12箭
replaceitem entity @s[hasitem=[{item=bow},{item=aw:quiver,quantity=0}]] slot.inventory 26 arrow 12 0 {"item_lock": { "mode": "lock_in_slot" } }
### 有弓有箭袋时：设为36箭
replaceitem entity @s[hasitem=[{item=bow},{item=aw:quiver}]] slot.inventory 26 arrow 36 0 {"item_lock": { "mode": "lock_in_slot" } }
