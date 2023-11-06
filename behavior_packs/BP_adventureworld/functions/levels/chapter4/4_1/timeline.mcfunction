# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 实体数目判定 ---

### 检测当前怪物数目
function methods/get_monster_amount
### 检测当前存活玩家数目
function methods/get_player_amount

## --- 成功判定 ---

### 检测到以下三个条件同时满足时，表明玩家已经通过本波：
### 1. 没有怪物存在； 2. 不处于怪物刷新的时间内； 3. 在上一刻仍处于“未完成上一波”的状态
execute @e[name=monsterAmount,scores={background=0}] ~~~ execute @e[name=monsterSummonDelay,scores={time=-1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=0}] ~~~ function methods/wave_completed
### 达到本关最大波数后，结束关卡
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function levels/chapter4/4_1/bonus

## --- 失败判定 ---

### 当不存在isAlive.@s=1的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/chapter4/4_1/game_lose

## --- 召唤怪物 ---

### 显示标题准备工作
execute @e[name=wave,scores={background=1..3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function methods/title
execute @e[name=wave,scores={background=1..3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c4-1§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}
### 召唤生成器
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -165 17 -17 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -162 17 -22 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -161 17 -20 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -162 17 -16 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -165 17 -23 "aw:as_summoner" "skeleton1Summoner"

execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -160 12 -22 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -165 17 -16 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -164 12 -17 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -160 17 -25 "aw:as_summoner" "drowned2Summoner"

execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -163 17 -18 "aw:as_summoner" "stray2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -160 17 -23 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -165 17 -23 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -164 12 -18 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -160 12 -22 "aw:as_summoner" "guardian1Summoner"
### 生成怪物后，雪块塌陷
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ structure load 4_1_phase2 -168 16 -23 0_degrees none block_by_block 1.25
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ function methods/title
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§3小心！雪塌陷了！"}]}
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ camerashake add @a[scores={isAlive=1}] 1.00 2.50


## --- 设置上一波完成标记为0 ---
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ scoreboard players set @s background 0

## --- 怪物延迟生成器计时 ---

### 每刻为变量time.monsterSummonDelay -= 1
scoreboard players add @e[name=monsterSummonDelay,scores={time=0..}] time -1
### 调用相关生成器并循环执行
execute @e[name=wave,scores={background=!0}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0..}] ~~~ function methods/monsters/summoner_controller
