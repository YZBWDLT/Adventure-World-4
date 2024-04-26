# ===== 时间线 =====

# --- 时间线部分 ---

scoreboard players add @e[name=timeline,scores={active=3}] time 1

# --- 剧情部分 ---

# 在0-900刻过程中给予防火
execute @e[name=timeline,scores={active=1,time=0..900}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ effect @a fire_resistance 30 0 true

# 锁定玩家视角
# facing ~11~2~11/900ticks | ~0.012~0.002~0.012/tick
# player ~-11~-2~-11/900ticks | ~-0.012~-0.002~-0.012/tick

execute @e[name=timeline,scores={active=1,time=0..900}] ~~~ execute @e[name=playerPosition] ~~~ tp @s ~-0.012~-0.002~-0.012
execute @e[name=timeline,scores={active=1,time=0..900}] ~~~ execute @e[name=facingPosition] ~~~ tp @s ~0.012~0.002~0.012

# 全过程结束后，传送玩家到初始位置并结束
execute @e[name=timeline,scores={active=1,time=901}] ~~~ effect @a fire_resistance 0 1 true
execute @e[name=timeline,scores={active=1,time=901}] ~~~ tp @a -82 -31 -28 facing -66 -31 -28
execute @e[name=timeline,scores={active=1,time=901}] ~~~ scoreboard players set @e[name=timeline] time -1
scoreboard players set @e[name=timeline,scores={time=-1}] active 3

# --- 非剧情部分 ---
# 当玩家在6-0卡住1分钟之后，提示玩家6-1是可以进的
execute @e[name=timeline,scores={active=3,time=1200}] ~~~ summon aw:text_display "提示：这里是可以进来的，试试跳上滴水石锥？" -76 -30 -46 
execute @e[name=timeline,scores={active=3,time=1200}] ~~~ tellraw @a {"rawtext":[{"translate":"§b看来你卡在6-0已经很久了！其实6-1被封住的滴水石锥是可以进去的，去看看吧？"}]}
execute @e[name=timeline,scores={active=3,time=1201}] ~~~ function lib/states/timeline/disable
