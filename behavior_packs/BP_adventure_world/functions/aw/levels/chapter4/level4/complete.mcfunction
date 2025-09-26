# ===== 完成关卡 =====
# 4-4

# --- 调用通用函数 ---
execute positioned -141 -30 6 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
clear @a aw:iron_chestplate
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a4-4已完成！§r\n§f你已获得 §e[钻石胸甲] §f！"}]}

# --- 生成引导点 ---
summon aw:destination -95 -30 -6

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/events/play_music
## 获取成就：(1) 无作弊，(2) 成就未获取，(3) 玩家未杀死怪物 -> 我以为挂机池呢
execute if score hasCheat data matches 0 if score achievement.noMonsterKilled record matches 0 if score temp.playerKilledMonster data matches 0 run function aw/lib/achievements/levels/no_monster_killed
## 移除临时变量设置
scoreboard players reset temp.remainingTime time
scoreboard players reset temp.nextMonster time
scoreboard players reset temp.nextMonsterType data
scoreboard players reset temp.nextMonsterPos data
scoreboard players reset temp.playerKilledMonster data
