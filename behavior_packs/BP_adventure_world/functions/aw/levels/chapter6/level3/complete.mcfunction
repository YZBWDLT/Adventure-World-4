# ===== 完成关卡 =====
# 6-3

# --- 调用通用函数 ---
execute positioned -75 -36 -15 run function aw/lib/modify_data/levels/complete_level

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a6-3已完成！§r"}]}

# --- 重新开放关卡 ---
fill -76 -37 -17 -74 -35 -17 air
fill -74 -39 8 -76 -37 8 air
