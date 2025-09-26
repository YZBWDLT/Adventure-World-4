# ===== 完成关卡 =====
# 2-3

# --- 调用通用函数 ---
execute positioned -143 -20 61 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
clear @a leather_chestplate
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a2-3已完成！§r\n§f你已获得 §b[生长药水] [亢奋药水] [神龟药水] [铁胸甲] §f！"}]}

# --- 生成引导点 ---
summon aw:destination -173 -20 30

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/events/play_music
## 获取成就：(1) 无作弊，(2) 成就未获取，(3) 玩家未受伤 -> 全身而退
execute if score hasCheat data matches 0 if score achievement.noHurt1 record matches 0 if score temp.playerHurt data matches 0 run function aw/lib/achievements/levels/no_hurt_1
## 移除临时变量
scoreboard players reset temp.playerHurt data
