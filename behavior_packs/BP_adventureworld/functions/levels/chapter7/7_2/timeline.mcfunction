# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 重生点机制 ---

### 每秒随机设定一次重生点
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players random @e[family=respawner] temp 0 1
### 按照temp.@s随机设定重生点
execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner] -178 -8 104
execute @e[name=tick,scores={time=0}] ~~~ tp @e[family=respawner] -164 -7 101

### 将诡异巨型菌上的玩家传送到绯红巨型菌上
tp @a[scores={isAlive=0},x=-181,y=-10,z=101,dx=5,dy=5,dz=5,rx=-85,rxm=-90] -164 -7 101 ~180 45
### 将绯红巨型菌上的玩家传送到诡异巨型菌上
tp @a[scores={isAlive=0},x=-167,y=-8,z=98,dx=5,dy=5,dz=5,rx=-85,rxm=-90] -178 -8 104 ~180 45

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
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function levels/chapter7/7_2/bonus

## --- 失败判定 ---

### 当不存在isAlive.@s=1的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/chapter7/7_2/game_lose

## --- 召唤怪物 ---

### 显示标题准备工作
execute @e[name=wave,scores={background=1..2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function methods/title
execute @e[name=wave,scores={background=1..2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c7-2§f | 第§a%%s§f波","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}
### 召唤生成器
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -162 -18 108 "aw:as_summoner" "piglin1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -169 -17 113 "aw:as_summoner" "piglin1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -162 -18 105 "aw:as_summoner" "piglin1Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -170 -17 102 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -162 -18 113 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -165 -18 94  "aw:as_summoner" "piglin3Summoner"

execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -163 -18 108 "aw:as_summoner" "hoglin2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -164 -18 104 "aw:as_summoner" "hoglin2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -165 -17 114 "aw:as_summoner" "hoglin2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -162 -18 103 "aw:as_summoner" "hoglin3Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -180 -18 111 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -177 -17 109 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -177 -17 114 "aw:as_summoner" "piglin2Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -177 -16 107 "aw:as_summoner" "piglin3Summoner"
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -181 -17 105 "aw:as_summoner" "piglin4Summoner"

execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -162 -18 106 "aw:as_summoner" "piglinBruteBossSummoner"

## --- 设置上一波完成标记为0 ---
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ scoreboard players set @s background 0

## --- 怪物延迟生成器计时 ---

### 每刻为变量time.monsterSummonDelay -= 1
scoreboard players add @e[name=monsterSummonDelay,scores={time=0..}] time -1
### 调用相关生成器并循环执行
execute @e[name=wave,scores={background=!0}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0..}] ~~~ function methods/monsters/summoner_controller
