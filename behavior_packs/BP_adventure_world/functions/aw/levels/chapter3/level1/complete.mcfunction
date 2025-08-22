# ===== 完成关卡 =====
# 3-1

# --- 调用通用函数 ---
execute positioned -188 -20 29 run function aw/lib/events/levels/complete_level
scoreboard players set timeline active 1

# --- 获得新物品 ---
clear @a aw:iron_helmet
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a3-1已完成！§r\n§f你已获得 §a[治疗药水] §e[钻石头盔] §f！\n§a非常好！灵活运用主药水可以帮助你更轻松地通过后面的关卡。"}]}

# --- 重新开放关卡 ---
## 打开 3-1 出口
fill -199 -21 29 -197 -19 29 air
## 打开 3-2 入口
fill -173 -21 13 -171 -19 13 structure_void
