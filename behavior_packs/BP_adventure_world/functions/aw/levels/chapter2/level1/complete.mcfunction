# ===== 完成关卡 =====
# 2-1

# --- 调用通用函数 ---
execute positioned -75 19 60 run function aw/lib/modify_data/levels/complete_level

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a2-1已完成！§r\n§f你已获得 §b[弓] §f！"}]}

# --- 重新开放关卡 ---
fill -74 20 58 -76 18 58 air
fill -69 18 64 -69 20 66 air
