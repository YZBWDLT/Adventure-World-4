# ===== 时间线 =====
# 岩浆涨落的时间线

# --- 倒计时 ---

scoreboard players remove chapter6.lavaRise time 1
execute if score chapter6.lavaRise time matches ..-7 run scoreboard players random chapter6.lavaRise time 8 20

# --- 警告玩家岩浆即将上涨 ---
# 剩余 5 秒时警告
# 上升幅度随 Boss 阶段而变化

## 标题
execute if score chapter6.lavaRise time matches 5 run function lib/title
execute if score chapter6.lavaRise time matches 5 if score @e[type=aw:blaze_king,c=1] bossStage matches 1..2 run titleraw @a subtitle {"rawtext":[{"translate":"§6岩浆即将上涨，请尽快躲到高处！"}]}
execute if score chapter6.lavaRise time matches 5 if score @e[type=aw:blaze_king,c=1] bossStage matches 3 run titleraw @a subtitle {"rawtext":[{"translate":"§c岩浆即将上涨2层，请尽快躲到高处！！！"}]}

## 粒子
execute if score chapter6.lavaRise time matches 1..5 run particle aw:lava_warning -78 -40 35

## 音效
execute if score chapter6.lavaRise time matches 1..5 as @a at @s run playsound bucket.fill_lava @s ~~~ 1 2 

# --- 岩浆上涨 ---
# 剩余 0 秒时上涨
# 上升幅度随 Boss 阶段而变化

execute if score chapter6.lavaRise time matches 0 if score @e[type=aw:blaze_king,c=1] bossStage matches 1..2 run structure load aw:6_4_lava_1 -89 -40 21
execute if score chapter6.lavaRise time matches 0 if score @e[type=aw:blaze_king,c=1] bossStage matches 3 run structure load aw:6_4_lava_2 -89 -40 21

# --- 岩浆消退 ---
# 岩浆上涨 6 秒后消退

execute if score chapter6.lavaRise time matches -6 run structure load aw:6_4_no_lava -89 -40 21
