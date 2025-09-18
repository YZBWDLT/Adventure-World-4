# ===== 计时器 =====

# --- time.tick ---
scoreboard players add tick time 1
execute unless score tick time matches 0..19 run scoreboard players set tick time 0

# --- time.timeline ---
# 仅启用后执行
execute if score timeline active matches 1.. run scoreboard players operation timeline time += timeLapse data

# --- time.playedSecond & time.playedMinute ---
# 玩家的游玩时间 | 仅限游戏开始后记录，游戏暂停时停止计时
execute if score chapter data matches 1..9 if score pausing data matches 0 if score tick time matches 19 run scoreboard players add playedSecond time 1
execute if score chapter data matches 1..9 if score pausing data matches 0 if score playedSecond time matches 60.. run scoreboard players add playedMinute time 1
execute if score chapter data matches 1..9 if score pausing data matches 0 if score playedSecond time matches 60.. run scoreboard players remove playedSecond time 60

# --- time.sound ---
# 仅当激活时执行
execute if score sound active matches 1.. run scoreboard players remove sound time 1
