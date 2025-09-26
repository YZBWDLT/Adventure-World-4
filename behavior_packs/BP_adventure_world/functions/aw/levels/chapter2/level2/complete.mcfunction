# ===== 完成关卡 =====
# 2-2

# --- 调用通用函数 ---
execute positioned -72 1 69 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
clear @a leather_leggings
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a2-2已完成！§r\n§f你已获得 §b[铁护腿] §f！"}]}

# --- 生成引导点 ---
summon aw:destination -143 -20 61

# --- 关卡特殊功能 ---
## 提示玩家
tellraw @a {"rawtext":[{"translate":"§a非常好！使用弓可以对强力的骷髅类怪物造成致命伤害。"}]}
## 获取成就：(1) 无作弊，(2) 成就未获取，(3) 未拉下拉杆 -> 别问，问就是陷阱
execute if score hasCheat data matches 0 if score achievement.noTrap record matches 0 if score temp.usedLever data matches 0 run function aw/lib/achievements/levels/no_trap
## 移除临时变量
scoreboard players reset temp.usedLever data
