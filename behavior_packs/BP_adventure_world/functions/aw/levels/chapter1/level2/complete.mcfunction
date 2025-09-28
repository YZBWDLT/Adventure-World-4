# ===== 完成关卡 =====
# 1-2

# --- 调用通用函数 ---
execute positioned -126 6 52 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a1-2已完成！§r\n§f你已获得 §a[治疗药水] §b[御风珠] §f！"}]}

# --- 生成引导点 ---
summon aw:destination -137 12 33
