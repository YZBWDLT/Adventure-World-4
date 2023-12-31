# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 特殊内容 ---
### 当生物坠入岩浆海中时，清除之
# execute @e[type=!player] ~~~ execute @s[x=~,y=-29,z=~,dx=0,dy=5,dz=0] ~~~ detect ~~~ lava -1 kill @s

## --- 重生点机制 ---
### 每秒随机设定一次重生点
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players random @e[family=respawner] temp 0 1
### 按照temp.@s随机设定重生点
execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner,scores={temp=0}] -248 -5 104
execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner,scores={temp=1}] -222 -12 86

### 将高位重生点上的玩家传送到低位重生点上
tp @a[scores={isAlive=0},x=-251,y=-11,z=99,dx=12,dy=10,dz=17,rx=-85,rxm=-90] -222 -12 86 ~180 45
### 将低位重生点上的玩家传送到高位重生点上
tp @a[scores={isAlive=0},x=-229,y=-13,z=81,dx=10,dy=7,dz=10,rx=-85,rxm=-90] -248 -5 104 ~180 0

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
execute @e[name=wave,scores={background=6}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function levels/chapter7/7_4/bonus

## --- 失败判定 ---

### 当不存在isAlive.@s=1的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/chapter7/7_4/game_lose

## --- 召唤怪物 ---

### 显示标题准备工作
execute @e[name=wave,scores={background=1..2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function methods/title
execute @e[name=wave,scores={background=1..2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c7-4§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}
### 召唤生成器
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -225 -17 109 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -238 -17 91 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -231 -7 86 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -242 -16 99 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -236 -8 93 "aw:as_summoner" "magmaCubeSmallSummoner"

execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -231 -7 86 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -225 -17 109 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -242 -16 99 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -236 -8 93 "aw:as_summoner" "magmaCubeSmallSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -224 -16 91 "aw:as_summoner" "magmaCubeMediumSummoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -238 -8 103 "aw:as_summoner" "skeleton1Summoner"

execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -224 -16 91 "aw:as_summoner" "magmaCubeMediumSummoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -231 -7 86 "aw:as_summoner" "magmaCubeMediumSummoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -241 -16 89 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -227 -18 102 "aw:as_summoner" "magmaCubeLargeSummoner"

execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -227 -18 102 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -233 -13 97 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -239 -6 92 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -227 -4 101 "aw:as_summoner" "ghastSummoner"

execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -239 -6 92 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -227 -4 101 "aw:as_summoner" "ghastSummoner"
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -236 -8 93 "aw:as_summoner" "skeleton3Summoner"
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -238 -8 103 "aw:as_summoner" "skeletonWithSwordSummoner"
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -241 -16 89 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -236 -8 93 "aw:as_summoner" "magmaCubeLargeSummoner"
execute @e[name=wave,scores={background=5}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -227 -18 102 "aw:as_summoner" "magmaCubeLargeSummoner"

## --- 设置上一波完成标记为0 ---
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ scoreboard players set @s background 0

