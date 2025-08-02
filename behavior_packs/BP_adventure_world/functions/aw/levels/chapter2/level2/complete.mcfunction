# ===== 完成关卡 =====
# 2-2

# --- 调用通用函数 ---
execute positioned -72 1 69 run function aw/lib/modify_data/levels/complete_level

# --- 获得新物品 ---
clear @a leather_leggings
function aw/system/controller/items
tellraw @a {"rawtext":[{"text":"§l§a2-2已完成！§r\n§f你已获得 §b[铁护腿] §f！"}]}

# --- 重新开放关卡 ---
fill -70 0 68 -70 3 70 air
fill -104 -17 69 -104 -15 67 air

# --- 关卡特殊功能 ---
## 提示玩家
tellraw @a {"rawtext":[{"translate":"§a非常好！使用弓可以对强力的骷髅类怪物造成致命伤害。"}]}
