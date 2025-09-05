# ===== 完成关卡 =====
# 7-3

# --- 调用通用函数 ---
execute positioned -194 -17 97 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a7-3已完成！§r"}]}

# --- 生成引导点 ---
summon aw:destination -225 -17 99
