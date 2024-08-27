# ===== 召唤生物 =====
# 此为倒计时结束之后所执行的命令

# --- 随机位置 ---
scoreboard players random randomPosition data 1 5

execute if score randomPosition data matches 1 run summon aw:marker "randomPositionforNewPack" -75 -37 35
execute if score randomPosition data matches 2 run summon aw:marker "randomPositionforNewPack" -66 -39 26
execute if score randomPosition data matches 3 run summon aw:marker "randomPositionforNewPack" -84 -39 44
execute if score randomPosition data matches 4 run summon aw:marker "randomPositionforNewPack" -66 -37 44
execute if score randomPosition data matches 5 run summon aw:marker "randomPositionforNewPack" -84 -37 26

# --- 获取难度 ---

function lib/get_data/difficulty

# --- 随机怪物并生成

scoreboard players random randomMonster data 1 100

execute if score randomMonster data matches 1..10 at @e[name="randomPositionforNewPack"] run summon aw:marker ~~~ "aw:as_summoner" "spider3Summoner"
execute if score randomMonster data matches 11..20 at @e[name="randomPositionforNewPack"] run summon aw:marker ~~~ "aw:as_summoner" "caveSpider3Summoner"
execute if score randomMonster data matches 21..30 at @e[name="randomPositionforNewPack"] run summon aw:marker ~~~ "aw:as_summoner" "witchSummoner"
execute if score randomMonster data matches 31..50 at @e[name="randomPositionforNewPack"] run summon aw:marker ~~~ "aw:as_summoner" "creeperHardSummoner"
execute if score randomMonster data matches 51..75 at @e[name="randomPositionforNewPack"] run summon aw:marker ~~~ "aw:as_summoner" "zombie4Summoner"
execute if score randomMonster data matches 76..100 at @e[name="randomPositionforNewPack"] run summon aw:marker ~~~ "aw:as_summoner" "skeleton3Summoner"

function lib/states/monster_summon_delay/enable_40ticks

# --- 移除临时变量与实体 ---

scoreboard players reset randomPosition data
scoreboard players reset randomMonster data
kill @e[name="randomPositionforNewPack"]

# --- 重置时间 ---
# 一二阶段时每3-7秒生成，三阶段时每3-5秒生成

execute if score @s bossStage matches 1..2 run scoreboard players random blazeKing.summonMonsterCountdown time 3 7
execute if score @s bossStage matches 3 run scoreboard players random blazeKing.summonMonsterCountdown time 3 5
