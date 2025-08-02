# ===== 完成关卡 =====
# 3-3

# --- 调用通用函数 ---
execute positioned -163 -20 28 run function aw/lib/modify_data/levels/complete_level

# --- 获得新物品 ---
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a3-3已完成！§r\n§f你已获得 §a[治疗药水] §d[箭袋] §f！\n§7箭的上限数目已经提升至36根了！"}]}

# --- 重新开放关卡 ---
## 打开 3-3 入口
fill -162 -21 26 -164 -19 26 structure_void
## 打开 3-4 入口
fill -168 -15 22 -168 -13 24 structure_void
