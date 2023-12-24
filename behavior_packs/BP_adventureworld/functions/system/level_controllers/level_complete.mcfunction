# ===== 关卡完成判定器 =====
# 该系统判断当前怪物数目，并根据怪物数目决定何时应该结束关卡。

## --- 判定怪物数目 & 关卡延迟倒计时 ---
function methods/get_monster_amount
### 如果存在怪物，则令time.levelCompleteDelay = active.levelCompleteDelay | 这样做可以保证当延迟时间内出现怪物时，可以重置这个时间
execute @e[name=monsterAmount,scores={background=!0}] ~~~ execute @e[name=levelCompleteDelay] ~~~ scoreboard players operation @s time = @s active
### 判定怪物数目为0后，开始关卡延迟倒计时
execute @e[name=monsterAmount,scores={background=0}] ~~~ scoreboard players add @e[name=levelCompleteDelay,scores={time=1..}] time -1

## --- 判定玩家通过本波 ---
## 检测到以下几个条件同时满足时，表明玩家已经通过本波：
## 1. 没有怪物存在；
## 2. 不处于怪物刷新的时间内（怪物刷新时也是无怪物状态）；
## 3. 不处于关卡延迟完成时间内（即关卡延迟完成时间为0）（若处于延迟时间内则证明还在等待状态）；
## 4. 在上一刻仍处于“未完成上一波”的状态（若一直处于已完成状态，该命令会重复执行多次）
execute @e[name=monsterAmount,scores={background=0}] ~~~ execute @e[name=monsterSummonDelay,scores={time=-1}] ~~~ execute @e[name=levelCompleteDelay,scores={time=0}] ~~~ execute @e[name=lastWaveCompleted,scores={background=0}] ~~~ function methods/wave_completed

## --- 判定玩家完成本关 ---
### 判定玩家当前波数是否大于最大波数，如果大于最大波数，则证明玩家已经通关 | 【基于上面4个条件达成后检测，仅当上面4个条件达成之后，background.lastWaveCompleted = 1】
### 这里利用background.wave - background.maxWave，如果该值大于0则代表当前波数大于最大波数
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ execute @e[name=wave] ~~~ scoreboard players operation @s temp = @s background
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ execute @e[name=wave] ~~~ scoreboard players operation @s temp -= @e[name=maxWave] background
### 当当前波数大于最大波数时，触发通关函数
execute @e[name=wave,scores={temp=1..}] ~~~ function levels/bonus_functions

## --- 将某些用于检测的值归零 ---
scoreboard players set @e[name=lastWaveCompleted] background 0
scoreboard players reset @e[name=wave] temp