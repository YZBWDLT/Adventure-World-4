# ===== 未完成关卡 =====
# 7-5

# --- 调用通用函数 ---
execute positioned -225 -17 99 run function aw/lib/events/levels/fail_level

# --- 重新开放关卡 ---
# （本关无需重新开放关卡，因为入口并未封闭）

# --- 生成引导点 ---
# 生成到 7-4 的井的位置
summon aw:destination -234 -30 98

# --- 关卡特殊功能 ---
## 移除已经安放的掩体
fill -238 -45 31 -212 -45 57 air destroy
## 播放音乐
function aw/lib/events/play_music
## 将时间线状态改回 2
scoreboard players set timeline active 2
function aw/lib/modify_data/timeline/disable_time_lapse
## 移除临时变量
scoreboard players reset temp.stage data
scoreboard players reset temp.skillCd time
scoreboard players reset temp.skillLength data
scoreboard players reset temp.skillType data
scoreboard players reset temp.spawnMonsterGroup data
scoreboard players reset temp.bossHealthOneSecond data
scoreboard objectives remove temp.respawnTime
scoreboard players reset temp.playerFired data
scoreboard objectives remove temp.exploded
## 重新允许玩家此时使用退出试炼
scoreboard players set allowQuit data 1
