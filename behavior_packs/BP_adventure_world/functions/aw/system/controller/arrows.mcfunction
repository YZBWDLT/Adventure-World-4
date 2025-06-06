# ===== 箭控制器 =====
# 每秒执行一次。
# 控制箭的上限，防止玩家拥有过多的箭。
# 同时，防止世界中存在过多的箭实体造成卡顿。

# --- 箭实体清除 ---

## 箭数量过多（>=50）时，设置data.allowArrowSupply=1
scoreboard players set temp.arrowAmount data 0
execute as @e[type=arrow] run scoreboard players add temp.arrowAmount data 1
execute if score temp.arrowAmount data matches 50.. run tellraw @a {"rawtext":[{"translate":"§7检测到过多的箭，现已清除。"}]}
execute if score temp.arrowAmount data matches 50.. run scoreboard players set allowArrowSupply data 1

## 当data.allowArrowSupply=1时，移除箭实体
execute if score allowArrowSupply data matches 1 run kill @e[type=arrow]

# --- 箭上限控制 ---
# 考虑到玩家可能会在中途捡起其他人的箭，导致超限，所以必须在超限后立刻清除多余的箭并立刻供应

## 检查玩家的箭是否超限，超限则添加arrowOutOfLimit标签
### 无弓时有箭
tag @a[hasitem=[{item=bow,quantity=0},{item=arrow}]] add arrowOutOfLimit
### 有弓无箭袋时>=13箭
tag @a[hasitem=[{item=bow},{item=aw:quiver,quantity=0},{item=arrow,quantity=13..}]] add arrowOutOfLimit
### 有弓有箭袋时>=37箭
tag @a[hasitem=[{item=bow},{item=aw:quiver},{item=arrow,quantity=37..}]] add arrowOutOfLimit

# --- 箭补充 ---

## 为超限玩家补充箭
execute as @a[tag=arrowOutOfLimit] run function aw/lib/modify_data/supply_arrow
## 当data.allowArrowSupply=1时，为所有玩家补充箭
execute as @a if score allowArrowSupply data matches 1 run function aw/lib/modify_data/supply_arrow

# --- 箭占位符 ---
# 如果玩家的箭耗尽，则将第26号槽位切换为屏障
replaceitem entity @a[hasitem={item=arrow,quantity=0}] slot.inventory 26 barrier 1 0 {"item_lock":{"mode":"lock_in_slot"}}

# --- 程序结束的变量设置 ---
## 销毁临时变量
scoreboard players reset temp.arrowAmount data
## 重新设置为禁止补充箭
scoreboard players set allowArrowSupply data 0
## 移除检测用的标签
tag @a remove arrowOutOfLimit
