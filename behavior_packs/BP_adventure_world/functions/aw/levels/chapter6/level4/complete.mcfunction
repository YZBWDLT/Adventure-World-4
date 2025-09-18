# ===== 完成关卡 =====
# 6-4

# --- 调用通用函数 ---
execute positioned -75 -38 22 run function aw/lib/events/levels/complete_level

# --- 获得新物品 ---
clear @a aw:diamond_helmet
clear @a aw:diamond_boots
clear @a leather_boots
function aw/system/items
tellraw @a {"rawtext":[{"text":"§l§a6-4已完成！"}]}

# --- 关卡特殊功能 ---
## 清除残余岩浆
structure load aw:6_4_no_lava -89 -40 21
## 播放音乐
function aw/lib/events/play_music
## 启用时间流逝
function aw/lib/modify_data/timeline/enable_time_lapse
## 移除临时变量
scoreboard players reset temp.bossHealthTwoThird data
scoreboard players reset temp.bossHealthOneThird data
scoreboard players reset temp.lavaRiseCountdown time
scoreboard players reset temp.nextMonster time
scoreboard players reset temp.nextMonsterType data
scoreboard players reset temp.nextMonsterPos data
scoreboard players reset temp.healBossCountdown time
scoreboard players reset temp.teleportCountdown time
scoreboard objectives remove temp.respawnTime
## 禁止玩家此时使用退出试炼
scoreboard players set allowQuit data 0
