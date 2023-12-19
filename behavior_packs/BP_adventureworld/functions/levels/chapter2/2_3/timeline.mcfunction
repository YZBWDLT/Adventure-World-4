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
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function levels/chapter2/2_3/bonus

## --- 失败判定 ---

### 当不存在isAlive.@s=1的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/chapter2/2_3/game_lose

## --- 召唤怪物 ---

### 显示标题准备工作
execute @e[name=wave,scores={background=1..3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function methods/title
execute @e[name=wave,scores={background=1..3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c2-3§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c2-3§f | 第§c%%s§f波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}
### 召唤生成器
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -159 -21 66 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -159 -21 56 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -149 -21 56 "aw:as_summoner" "spider1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -149 -21 66 "aw:as_summoner" "spider1Summoner"

execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -154 -21 66 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -154 -21 56 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -159 -21 61 "aw:as_summoner" "creeperNormalSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -149 -21 61 "aw:as_summoner" "creeperNormalSummoner"

execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -154 -21 66 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -154 -21 56 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -159 -21 61 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -149 -21 61 "aw:as_summoner" "zombie2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -154 -15 59 "aw:as_summoner" "zombie2Summoner"

execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -154 -15 63 "aw:as_summoner" "skeletonKingSummoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -154 -21 64 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -154 -21 58 "aw:as_summoner" "skeleton1Summoner"

## --- 设置上一波完成标记为0 ---
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ scoreboard players set @s background 0

