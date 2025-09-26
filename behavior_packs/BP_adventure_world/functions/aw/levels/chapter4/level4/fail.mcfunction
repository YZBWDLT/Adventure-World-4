# ===== 未完成关卡 =====
# 4-4

# --- 调用通用函数 ---
execute positioned -156 -11 14 run function aw/lib/events/levels/fail_level

# --- 生成引导点 ---
summon aw:destination -141 -30 6

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/events/play_music
## 移除临时变量设置
scoreboard players reset temp.remainingTime time
scoreboard players reset temp.nextMonster time
scoreboard players reset temp.nextMonsterType data
scoreboard players reset temp.nextMonsterPos data
scoreboard players reset temp.playerKilledMonster data
