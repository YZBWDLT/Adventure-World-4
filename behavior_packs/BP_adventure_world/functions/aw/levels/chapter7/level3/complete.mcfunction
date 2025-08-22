# ===== 完成关卡 =====
# 7-3

# --- 调用通用函数 ---
execute positioned -194 -17 97 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a7-3已完成！§r"}]}

# --- 重新开放关卡 ---
fill -192 -18 96 -192 -16 98 air
fill -217 -18 98 -217 -16 100 air
