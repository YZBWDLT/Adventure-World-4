# ===== 完成关卡 =====
# 4-2

# --- 调用通用函数 ---
execute positioned -156 8 -1 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a4-2已完成！§r\n§f你已获得 §e[净化药水] §d[火焰弓] §f！\n§7手持弓可获取附魔"}]}

# --- 生成引导点 ---
summon aw:destination -156 -11 14
