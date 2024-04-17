# ===== 时间线 =====

# --- 时间线部分 ---
scoreboard players add @e[name=timeline,scores={active=3}] time 1

# --- 剧情部分 ---
# 在0-1100刻过程中给予防火
execute @e[name=timeline,scores={active=1,time=0..1100}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ effect @a fire_resistance 30 0 true

# 锁定玩家视角 阶段2
# 位置从(-71 -29 -20)->(-82 -31 -31)，1100刻内玩家位置~-11~-2~，每刻~-0.01~-0.001~-0.01
# 视角每刻~0.01~0.001~0.01
execute @e[name=timeline,scores={active=1,time=0..1100}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~-0.01~-0.001~-0.01
execute @e[name=timeline,scores={active=1,time=0..1100}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~0.01~0.001~0.01

# 全过程结束后，传送玩家到初始位置并结束
execute @e[name=timeline,scores={active=1,time=1101}] ~~~ effect @a fire_resistance 0 1 true
execute @e[name=timeline,scores={active=1,time=1101}] ~~~ tp @a -82 -31 -28 facing -66 -31 -28
execute @e[name=timeline,scores={active=1,time=1101}] ~~~ scoreboard players set @e[name=timeline] time -1
scoreboard players set @e[name=timeline,scores={time=-1}] active 3

# --- 非剧情部分 ---
# 当玩家在6-0卡住1分钟之后，提示玩家6-1是可以进的
execute @e[name=timeline,scores={active=3,time=1200}] ~~~ summon aw:text_display "提示：这里是可以进来的，试试跳上滴水石锥？" -76 -30 -46 
execute @e[name=timeline,scores={active=3,time=1200}] ~~~ tellraw @a {"rawtext":[{"translate":"§b看来你卡在6-0已经很久了！其实6-1被封住的滴水石锥是可以进去的，去看看吧？"}]}
execute @e[name=timeline,scores={active=3,time=1201}] ~~~ function lib/states/timeline/disable
