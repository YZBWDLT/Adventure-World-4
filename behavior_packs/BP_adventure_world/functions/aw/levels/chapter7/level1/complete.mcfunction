# ===== 完成关卡 =====
# 7-1

# --- 调用通用函数 ---
execute positioned -119 -16 103 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a7-1已完成！§r"}]}
