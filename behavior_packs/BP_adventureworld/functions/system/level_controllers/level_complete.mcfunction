# ===== 关卡完成判定器 =====
# 该系统判断当前怪物数目，并根据怪物数目决定何时应该结束关卡。
# 判断逻辑：判断怪物数目，如果怪物数目为0时则开启关卡延迟倒计时，当满足一定条件后通过本波潮；若本波潮通过后wave的值大于最大波数则玩家通过这关

# --- 判定怪物数目 & 关卡延迟倒计时 ---
function lib/get_monster_amount
## 如果存在怪物，则令time.levelCompleteDelay = active.levelCompleteDelay | 这样做可以保证当延迟时间内出现怪物时，可以重置这个时间
execute @e[name=monsterAmount,scores={data=!0}] ~~~ execute @e[name=levelCompleteDelay] ~~~ scoreboard players operation @s time = @s active
## 判定怪物数目为0后，开始关卡延迟倒计时
execute @e[name=monsterAmount,scores={data=0}] ~~~ scoreboard players add @e[name=levelCompleteDelay,scores={active=0..,time=1..}] time -1

# --- 判定玩家数目 ---
function lib/get_player_amount

# --- 判定玩家通过本波 ---
# 检测到以下几个条件同时满足时，表明玩家已经通过本波：
# 1. 没有怪物存在；
# 2. 不处于怪物刷新的时间内（怪物刷新时也是无怪物状态）；
# 3. 不处于关卡延迟完成时间内（即关卡延迟完成时间为0）（若处于延迟时间内则证明还在等待状态）；
# 4. 至少存在1个玩家（防止玩家退出重进后被认为是“无玩家”的）
# 若完成上述3个条件，则此时可以认为是“完成本波”的。
execute @e[name=monsterAmount,scores={data=0}] ~~~ execute @e[name=monsterSummonDelay,scores={active=0}] ~~~ execute @e[name=levelCompleteDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1..}] ~~~ function lib/wave_completed

# --- 判定玩家完成本关 / 开启下一波 ---
# 【该模块需要基于“完成本波”的前提下执行】
# 当玩家完成本波后，按照以下情况判断待执行的函数
# 1. 若当前波数大于最大波数，执行通关函数。
# 2. 若当前波数小于最大波数，执行怪物设定函数以生成怪物生成器。

execute @e[name=monsterAmount,scores={data=0}] ~~~ execute @e[name=monsterSummonDelay,scores={active=0}] ~~~ execute @e[name=levelCompleteDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1..}] ~~~ execute @e[name=wave] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=monsterAmount,scores={data=0}] ~~~ execute @e[name=monsterSummonDelay,scores={active=0}] ~~~ execute @e[name=levelCompleteDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1..}] ~~~ execute @e[name=wave] ~~~ scoreboard players operation @s temp -= @e[name=maxWave] data
## 当当前波数小于或等于最大波数时，触发怪物设定函数以开启下一波
execute @e[name=monsterAmount,scores={data=0}] ~~~ execute @e[name=monsterSummonDelay,scores={active=0}] ~~~ execute @e[name=levelCompleteDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1..}] ~~~ execute @e[name=wave,scores={temp=..0}] ~~~ function levels/monster_settings_functions
execute @e[name=monsterAmount,scores={data=0}] ~~~ execute @e[name=monsterSummonDelay,scores={active=0}] ~~~ execute @e[name=levelCompleteDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1..}] ~~~ execute @e[name=wave,scores={temp=..0}] ~~~ function lib/monster_summon_delay/enable_40ticks
## 当当前波数大于最大波数时，触发通关函数
execute @e[name=monsterAmount,scores={data=0}] ~~~ execute @e[name=monsterSummonDelay,scores={active=0}] ~~~ execute @e[name=levelCompleteDelay,scores={time=0}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1..}] ~~~ execute @e[name=wave,scores={temp=1..}] ~~~ function levels/bonus_functions

# --- 将某些用于检测的值归零 ---
scoreboard players reset @e[name=wave] temp