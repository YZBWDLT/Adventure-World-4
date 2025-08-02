# ===== 未完成关卡 =====
# 4-4

# --- 调用通用函数 ---
execute positioned -156 -11 14 run function aw/lib/modify_data/levels/fail_level

# --- 重新开放关卡 ---
fill -143 -31 7 -143 -29 5 air

# --- 关卡特殊功能 ---
## 播放音乐
function aw/lib/modify_data/play_music
## 移除临时变量设置
scoreboard players reset temp.remainingTime time
scoreboard players reset temp.nextMonster time
scoreboard players reset temp.nextMonsterType data
scoreboard players reset temp.nextMonsterPos data
