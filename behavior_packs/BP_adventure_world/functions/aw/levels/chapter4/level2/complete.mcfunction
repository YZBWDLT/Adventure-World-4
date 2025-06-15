# ===== 完成关卡 =====
# 4-2

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -156 8 -1

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a4-2已完成！§r\n§f你已获得 §e[净化药水] §d[火焰弓] §f！\n§7手持弓可获取附魔"}]}

# --- 重新开放关卡 ---
fill -155 7 -3 -157 9 -3 air
fill -155 7 16 -157 9 16 air
