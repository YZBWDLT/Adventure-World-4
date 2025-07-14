# ===== 未完成关卡 =====
# 7-5

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/fail_level

# --- 重新开放关卡 ---
# （本关无需重新开放关卡，因为入口并未封闭）

# --- 关卡特殊功能 ---
## 移除已经安放的掩体
fill -238 -45 31 -212 -45 57 air destroy
## 播放音乐
function aw/lib/modify_data/play_music
## 将时间线状态改回 2
scoreboard players set timeline active 2
function aw/lib/modify_data/states/timeline/disable_time_lapse
## 移除临时变量
scoreboard players reset temp.stage data
scoreboard players reset temp.skillCd time
scoreboard players reset temp.skillLength data
scoreboard players reset temp.skillType data
scoreboard players reset temp.spawnMonsterGroup data
scoreboard players reset temp.bossHealthOneSecond data
