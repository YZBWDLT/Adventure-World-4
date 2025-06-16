# ===== 完成关卡 =====
# 4-3

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/complete_level

# --- 设置重生点 ---
spawnpoint @a -156 -11 14

# --- 获得新物品 ---
clear @a aw:iron_leggings
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a4-3已完成！§r\n§f你已获得 §d[休眠药水] §e[钻石护腿] §f！\n§7温馨提示，不要混用生长药水和休眠药水"}]}

# --- 重新开放关卡 ---
fill -155 -12 16 -157 -10 16 air
fill -156 -18 5 -158 -18 7 air replace ice
