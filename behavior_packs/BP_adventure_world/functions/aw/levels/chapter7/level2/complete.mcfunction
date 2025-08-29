# ===== 完成关卡 =====
# 7-2

# --- 调用通用函数 ---
execute positioned -161 -17 110 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a7-2已完成！§r"}]}
