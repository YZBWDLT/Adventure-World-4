# ===== 时间线 =====

# --- 激活状态3的对话线 ---
scoreboard players add @e[name=dialogue,scores={active=3}] time 1

# --- 切换成就 ---
execute @a[c=1] ~~~ detect -25 2 -45 birch_button 10 scoreboard players remove @e[name=achievement] data 1
execute @a[c=1] ~~~ detect -25 2 -45 birch_button 10 scoreboard players set @e[name=achievement,scores={data=!1..13}] data 13
execute @a[c=1] ~~~ detect -25 2 -45 birch_button 10 function lib/show_achievements
execute @a[c=1] ~~~ detect -25 2 -45 birch_button 10 setblock -25 2 -45 birch_button ["button_pressed_bit":false,"facing_direction":2]

execute @a[c=1] ~~~ detect -29 2 -45 birch_button 10 scoreboard players add @e[name=achievement] data 1
execute @a[c=1] ~~~ detect -29 2 -45 birch_button 10 scoreboard players set @e[name=achievement,scores={data=!1..13}] data 1
execute @a[c=1] ~~~ detect -29 2 -45 birch_button 10 function lib/show_achievements
execute @a[c=1] ~~~ detect -29 2 -45 birch_button 10 setblock -29 2 -45 birch_button ["button_pressed_bit":false,"facing_direction":2]

# --- 显示统计数据 ---
# 人数不同时显示的内容也不同
execute @a[c=1] ~~~ detect -26 2 -51 birch_button 9 function lib/get_data/player_amount
execute @a[c=1] ~~~ detect -26 2 -51 birch_button 9 execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @a ~~~ function lib/get_data/stats_singleplayer
execute @a[c=1] ~~~ detect -26 2 -51 birch_button 9 execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a ~~~ function lib/get_data/stats_multiplayer
execute @a[c=1] ~~~ detect -26 2 -51 birch_button 9 setblock -26 2 -51 birch_button ["button_pressed_bit":false,"facing_direction":1]

# --- 当玩家和张宇交互后 ---
# 启用对话，状态3
execute @e[name="张宇",tag=interacted] ~~~ scoreboard players set @e[name=dialogue] active 3
# 启用时间线
execute @e[name="张宇",tag=interacted] ~~~ function lib/states/timeline/enable
# 移除张宇的interacted标签
execute @e[name="张宇",tag=interacted] ~~~ tag @s remove interacted
# 启用对话后第10刻，施加失明
execute @e[name=timeline,scores={time=10}] ~~~ effect @a blindness 4 0 true
# 启用对话后第50刻，传送到小黑屋
execute @e[name=timeline,scores={time=50}] ~~~ function lib/black_screen/teleport_respawner
# 启用对话后第100刻，触发重置游戏
execute @e[name=timeline,scores={time=100}] ~~~ function levels/end/stage_4/start
