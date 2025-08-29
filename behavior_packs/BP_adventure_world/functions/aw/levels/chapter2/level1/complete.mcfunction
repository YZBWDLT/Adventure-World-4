# ===== 完成关卡 =====
# 2-1

# --- 调用通用函数 ---
execute positioned -75 19 60 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a2-1已完成！§r\n§f你已获得 §b[弓] §f！"}]}
