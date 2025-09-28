# ===== 暂停时时间线：等待选择 =====

# --- 时间线流逝 ---
execute if score temp.pauseTimeline time matches 0..60 run scoreboard players add temp.pauseTimeline time 1

# --- 进入暂停状态时，传送并解禁玩家 ---
execute if score temp.pauseTimeline time matches 40 run tp @a -95 -15 -6 180 0
execute if score temp.pauseTimeline time matches 60 run inputpermission set @a movement enabled
execute if score temp.pauseTimeline time matches 60 run inputpermission set @a camera enabled

# --- 检查玩家选择游戏或退出游戏 ---
execute as @a at @s if block ~~-2~ lime_concrete run function aw/levels/pause/events/choose_continue
scoreboard players set temp.quitPlayerAmount data 0
execute as @a at @s if block ~~-2~ red_concrete run scoreboard players add temp.quitPlayerAmount data 1
execute if score temp.quitPlayerAmount data = playerAmount data run function aw/levels/pause/events/choose_quit
