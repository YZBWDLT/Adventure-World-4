# ===== 完成关卡 =====
# 7-2

# --- 调用通用函数 ---
execute positioned -161 -17 110 run function aw/lib/modify_data/levels/complete_level

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a7-2已完成！§r"}]}

# --- 重新开放关卡 ---
fill -159 -18 109 -159 -16 111 air
fill -184 -18 98 -184 -16 96 air
