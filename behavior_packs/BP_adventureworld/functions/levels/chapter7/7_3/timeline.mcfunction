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
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function levels/chapter7/7_3/bonus

## --- 失败判定 ---

### 设在重生点的玩家的isAlive.@s=0，以标记该玩家已死亡
scoreboard players set @a[x=-203,y=-12,z=114,r=2,scores={isAlive=1}] isAlive 0
### 当不存在isAlive.@s=1的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/chapter7/7_3/game_lose

## --- 召唤怪物 ---

### 显示标题准备工作
execute @e[name=wave,scores={background=1..2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function methods/title
execute @e[name=wave,scores={background=1..2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c7-3§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}
### 召唤生成器
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -200 -18 98 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -195 -18 96 "aw:as_summoner" "skeleton1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -203 -17 104 "aw:as_summoner" "zombifiedPiglin2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -202 -16 96 "aw:as_summoner" "zombifiedPiglin2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -207 -16 90 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -214 -18 95 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -205 -16 99 "aw:as_summoner" "zombifiedPiglin3Summoner"

execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -197 -10 103 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -210 -6 98 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -200 -2 106 "aw:as_summoner" "ghastSummoner"

execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -197 -10 103 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -210 -6 98 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -202 -16 96 "aw:as_summoner" "zombifiedPiglin2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -200 -18 98 "aw:as_summoner" "skeleton2Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -195 -18 96 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -203 -17 104 "aw:as_summoner" "skeleton4Summoner"

execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -195 -18 96 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -202 -16 96 "aw:as_summoner" "skeleton4Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -214 -18 95 "aw:as_summoner" "skeletonWithSword3Summoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -203 -17 104 "aw:as_summoner" "skeletonWithSword4Summoner"

## --- 设置上一波完成标记为0 ---
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ scoreboard players set @s background 0

## --- 怪物延迟生成器计时 ---

### 每刻为变量time.monsterSummonDelay -= 1
scoreboard players add @e[name=monsterSummonDelay,scores={time=0..}] time -1
### 调用相关生成器并循环执行
execute @e[name=wave,scores={background=!0}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0..}] ~~~ function methods/monsters/summoner_controller
