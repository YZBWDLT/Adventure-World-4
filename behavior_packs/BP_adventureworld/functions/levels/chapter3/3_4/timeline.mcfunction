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
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function levels/chapter3/3_4/bonus

## --- 失败判定 ---

### 当不存在isAlive.@s=1的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/chapter3/3_4/game_lose

## --- 召唤怪物 ---

### 显示标题准备工作
execute @e[name=wave,scores={background=1..4,background=!3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function methods/title
execute @e[name=wave,scores={background=1..4,background=!3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c3-4§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c3-4§f | 第§c%%s§f波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}
### 召唤生成器

execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -175 -14 25 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -176 -9 19 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -172 -6 26 "aw:as_summoner" "drowned2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -169 -3 25 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -169 -14 21 "aw:as_summoner" "creeper0Summoner"

execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -176 -7 24 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -169 -14 26 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -176 -9 19 "aw:as_summoner" "creeper0Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -169 2 23 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -170 2 23 "aw:as_summoner" "drowned2Summoner"

execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -174 -15 21 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -172 0 19 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -174 4 23 "aw:as_summoner" "elderGuardianSummoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -169 2 23 "aw:as_summoner" "creeper0Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -173 4 23 "aw:as_summoner" "drowned2Summoner"

execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -173 8 27 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -172 -6 26 "aw:as_summoner" "guardian1Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -173 -14 26 "aw:as_summoner" "creeper0Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -169 2 23 "aw:as_summoner" "creeper0Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -173 -11 20 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -169 10 27 "aw:as_summoner" "drowned3Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -172 17 20 "aw:as_summoner" "skeleton1Summoner"
### 生成怪物后，令水位上涨
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ structure load 3_4_layer1_water -178 -16 18 0_degrees none layer_by_layer 5.00
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ structure load 3_4_layer2 -178 -4 18 0_degrees none layer_by_layer 5.00
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ structure load 3_4_layer3 -178 6 18 0_degrees none layer_by_layer 5.00
execute @e[name=wave,scores={background=2..4}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ function methods/title
execute @e[name=wave,scores={background=2..4}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c注意！水位上涨！"}]}

## --- 设置上一波完成标记为0 ---
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ scoreboard players set @s background 0


## --- 第一波时，清除水 ---
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ function levels/chapter3/3_4/water_clear