# ===== 完成关卡 =====
# 3-3

# --- 调用通用函数 ---
execute positioned -163 -20 28 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a3-3已完成！§r\n§f你已获得 §a[治疗药水] §d[箭袋] §f！\n§7箭的上限数目已经提升至36根了！"}]}

# --- 生成引导点 ---
summon aw:destination -170 -14 23
