# ===== 完成关卡 =====
# 7-1

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -119 -16 103

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a7-1已完成！§r"}]}

# --- 重新开放关卡 ---
fill -150 -18 102 -150 -16 100 air
