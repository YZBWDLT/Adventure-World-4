# ===== 岩浆涨落 =====

# --- 倒计时 ---
scoreboard players remove temp.lavaRiseCountdown time 1
execute if score temp.lavaRiseCountdown time matches ..-7 run scoreboard players random temp.lavaRiseCountdown time 8 20

# --- 警告玩家岩浆即将上涨 ---
# 剩余 5 秒时警告，当 Boss 血量剩余 1/3 以上时上涨 1 层，剩余 1/3 以下时上涨 2 层

## 标题
execute if score temp.lavaRiseCountdown time matches 5 run function aw/lib/modify_data/title
execute if score temp.lavaRiseCountdown time matches 5 if score @e[type=aw:blaze_king] health >= temp.bossHealthOneThird run titleraw @a subtitle {"rawtext":[{"translate":"§6岩浆即将上涨，请尽快躲到高处！"}]}
execute if score temp.lavaRiseCountdown time matches 5 if score @e[type=aw:blaze_king] health < temp.bossHealthOneThird run titleraw @a subtitle {"rawtext":[{"translate":"§c岩浆即将上涨2层，请尽快躲到高处！！！"}]}
## 粒子
execute if score temp.lavaRiseCountdown time matches 5 run particle aw:lava_warning -78 -40 35
## 音效
execute if score temp.lavaRiseCountdown time matches 1..5 as @a at @s run playsound bucket.fill_lava @s ~~~ 1 2 

# --- 岩浆上涨 ---
# 剩余 0 秒时上涨，当 Boss 血量剩余 1/3 以上时上涨 1 层，剩余 1/3 以下时上涨 2 层
execute if score temp.lavaRiseCountdown time matches 0 if score @e[type=aw:blaze_king] health >= temp.bossHealthOneThird run structure load aw:6_4_lava_1 -89 -40 21
execute if score temp.lavaRiseCountdown time matches 0 if score @e[type=aw:blaze_king] health < temp.bossHealthOneThird run structure load aw:6_4_lava_2 -89 -40 21

# --- 岩浆消退 ---
# 剩余 -6 秒（上涨 6 秒后）时消退
execute if score temp.lavaRiseCountdown time matches -6 run structure load aw:6_4_no_lava -89 -40 21
