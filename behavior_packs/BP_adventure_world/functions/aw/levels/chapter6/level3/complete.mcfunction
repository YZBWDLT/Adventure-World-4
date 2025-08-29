# ===== 完成关卡 =====
# 6-3

# --- 调用通用函数 ---
execute positioned -75 -36 -15 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a6-3已完成！§r"}]}
