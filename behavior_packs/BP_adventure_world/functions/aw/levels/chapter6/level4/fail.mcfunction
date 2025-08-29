# ===== 未完成关卡 =====
# 6-4

# --- 调用通用函数 ---
execute positioned -75 -36 -15 run function aw/lib/events/levels/fail_level

# --- 关卡特殊功能 ---
## 清除残余岩浆
structure load aw:6_4_no_lava -89 -40 21
## 播放音乐
function aw/lib/events/play_music
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
