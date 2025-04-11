# ===== 箭控制器 =====
# 每秒执行一次。
# 控制箭的上限，防止玩家拥有过多的箭。
# 同时，防止世界中存在过多的箭实体造成卡顿。

# --- 当箭的数目过多时，清除之 ---
## 检查箭的数量
scoreboard players set temp.arrowAmount data 0
execute as @e[type=arrow] run scoreboard players add temp.arrowAmount data 1
## 如果箭的数量过多，则清除之并提醒玩家，同时启用箭补充
execute if score temp.arrowAmount data matches 50.. run tellraw @a {"rawtext":[{"text":"§7检测到过多的箭，现已清除。"}]}
execute if score temp.arrowAmount data matches 50.. run scoreboard players set allowArrowSupply data 1
execute if score temp.arrowAmount data matches 50.. run kill @e[type=arrow]

# --- 箭上限控制 ---
# 考虑到玩家可能会在中途捡起其他人的箭，导致超限，所以必须在超限后立刻清除多余的箭并立刻供应

## 检查玩家的箭是否超限，超限则添加arrowOutOfLimit标签
### 无弓时有箭
tag @a[hasitem=[{item=bow,quantity=0},{item=arrow}]] add arrowOutOfLimit
### 有弓无箭袋时>=13箭
tag @a[hasitem=[{item=bow},{item=aw:quiver,quantity=0},{item=arrow,quantity=13..}]] add arrowOutOfLimit
### 有弓有箭袋时>=37箭
tag @a[hasitem=[{item=bow},{item=aw:quiver},{item=arrow,quantity=37..}]] add arrowOutOfLimit

## 清除超限玩家的箭，并按照允许的上限给予箭
clear @a[tag=arrowOutOfLimit] arrow
### 有弓无箭袋时：设为12箭
replaceitem entity @a[tag=arrowOutOfLimit,hasitem=[{item=bow},{item=aw:quiver,quantity=0}]] slot.inventory 26 arrow 12 0 {"item_lock": { "mode": "lock_in_slot" } }
### 有弓有箭袋时：设为36箭
replaceitem entity @a[tag=arrowOutOfLimit,hasitem=[{item=bow},{item=aw:quiver}]] slot.inventory 26 arrow 36 0 {"item_lock": { "mode": "lock_in_slot" } }

# --- 箭补充 ---
# 仅当 data.allowArrowSupply = 1 时补充箭

## 清除场上的箭和玩家背包的箭
execute if score allowArrowSupply data matches 1 run kill @e[type=arrow]
execute if score allowArrowSupply data matches 1 run clear @a arrow
## 如果玩家有弓，则……
### 如果玩家没有箭袋，则：第26号槽位替换为12根箭
execute if score allowArrowSupply data matches 1 run replaceitem entity @a[hasitem=[{item=bow},{item=aw:quiver,quantity=0}]] slot.inventory 26 arrow 12 0 {"item_lock": { "mode": "lock_in_slot" } }
### 如果玩家有箭袋，则：第26号槽位替换为36根箭
execute if score allowArrowSupply data matches 1 run replaceitem entity @a[hasitem=[{item=bow},{item=aw:quiver}]] slot.inventory 26 arrow 36 0 {"item_lock": { "mode": "lock_in_slot" } }

# --- 箭占位符 ---
# 如果玩家的箭在上述操作之后耗尽，则将第26号槽位切换为屏障
replaceitem entity @a[hasitem=[{item=bow},{item=arrow,quantity=0},{item=barrier,quantity=0,location=slot.inventory,slot=26}]] slot.inventory 26 barrier 1 0 {"item_lock":{"mode":"lock_in_slot"}}

# --- 程序结束的变量设置 ---
## 销毁临时变量
scoreboard players reset temp.arrowAmount data
## 重新设置为禁止补充箭
scoreboard players set allowArrowSupply data 0
## 移除检测用的标签
tag @a remove arrowOutOfLimit
