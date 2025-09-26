# ===== 完成关卡 =====
# 4-3

# --- 调用通用函数 ---
execute positioned -156 -11 14 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
clear @a aw:iron_leggings
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a4-3已完成！§r\n§f你已获得 §d[休眠药水] §e[钻石护腿] §f！\n§7温馨提示，不要混用生长药水和休眠药水"}]}

# --- 生成引导点 ---
summon aw:destination -141 -30 6

# --- 关卡特殊功能 ---
## 开放 4-3 出口
fill -156 -18 5 -158 -18 7 air replace ice
## 获取成就：(1) 无作弊，(2) 成就未获取，(3) 玩家未穿着靴子 -> 身轻如燕
execute if score hasCheat data matches 0 if score achievement.noLeatherBoots record matches 0 if score temp.playerEquippedLeatherBoots data matches 0 run function aw/lib/achievements/levels/no_leather_boots
## 移除临时变量
scoreboard players reset temp.playerEquippedLeatherBoots data
