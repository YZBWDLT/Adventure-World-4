# ===== 完成关卡 =====
# 1-2

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -126 5 52

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a1-2已完成！§r\n§f你已获得 §a[治疗药水] §b[御风珠] §f！"}]}

# --- 重新开放关卡 ---
fill -127 5 50 -125 7 50 air
