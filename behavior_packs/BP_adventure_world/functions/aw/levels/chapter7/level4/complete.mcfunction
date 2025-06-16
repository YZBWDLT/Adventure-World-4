# ===== 完成关卡 =====
# 7-4

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -225 -17 99

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a7-4已完成！§r"}]}

# --- 重新开放关卡 ---
fill -223 -18 98 -223 -16 100 air
fill -235 -30 97 -233 -30 99 structure_void
