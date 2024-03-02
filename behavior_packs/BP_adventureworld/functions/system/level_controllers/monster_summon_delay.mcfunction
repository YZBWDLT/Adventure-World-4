# ===== 怪物延迟生成器 =====
# 该函数用于延迟生成怪物。
# 判断逻辑：当怪物延迟生成被激活（active.monsterSummonerDelay=1）后，开始生成怪物计时。
# 当怪物延迟生成倒计时归零后，停止激活状态。
# 【仅当怪物延迟处于激活状态下执行】

# --- 获取关卡进度数据 ---
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/get_data/3_digit_seperator

# --- 倒计时 ---
# 启用倒计时的条件：
# 1. 怪物延迟生成处于激活状态
# 2. 当前已正式开始游戏（ID=100~）
# 3. 当前处于“游戏状态”（temp3.level=0）
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ scoreboard players add @e[name=monsterSummonDelay,scores={active=1,time=0..}] time -1

# --- 音效 ---
# 在剩余特定时间后，播放音效。启用音效的条件与前文一致。

## 播放音效警示玩家有怪物产生
## 粒子为各个生物特有的，写在了生物生成函数里
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ execute @e[name=monsterSummonDelay,scores={active=1,time=1..5}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ execute @e[name=monsterSummonDelay,scores={active=1,time=10}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ execute @e[name=monsterSummonDelay,scores={active=1,time=15}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ execute @e[name=monsterSummonDelay,scores={active=1,time=20}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ execute @e[name=monsterSummonDelay,scores={active=1,time=25}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 1
## 播放召唤音效
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ execute @e[name=monsterSummonDelay,scores={active=1,time=0}] ~~~ execute @e[family=summoner] ~~~ playsound mob.evocation_illager.prepare_attack @a ~~~ 1

# --- 调用生成器函数 ---
# 启用生成器的条件与前文一致。

## 召唤怪物
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ execute @e[name=monsterSummonDelay,scores={active=1,time=0..}] ~~~ function lib/monsters/summoner_controller
## 在完成召唤后，获取当前最大怪物数
execute @e[name=level,scores={temp3=0,data=100..}] ~~~ execute @e[name=monsterSummonDelay,scores={active=1,time=0}] ~~~ function lib/get_data/max_monster_amount

# --- 倒计时结束后取消激活状态 ---
# （写在最后面，是因为其它函数需要在active.monsterSummonDelay=1时执行）
scoreboard players set @e[name=monsterSummonDelay,scores={time=0}] active 0
