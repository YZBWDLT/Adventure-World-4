# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 令时间流逝 ---
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players remove @e[name=timeLeft] time 1
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players remove @e[name=monsterRefreshLeft] time 1

## --- 实体数目判定 ---

### 检测当前怪物数目
function methods/get_monster_amount
### 检测当前存活玩家数目
function methods/get_player_amount

## --- 成功判定 ---

### 检测到时间结束后，结束关卡
execute @e[name=timeLeft,scores={time=..0}] ~~~ function levels/chapter4/4_4/bonus

## --- 失败判定 ---

### 设在重生点的玩家的isAlive.@s=0，以标记该玩家已死亡
scoreboard players set @a[x=-145,y=-23,z=6,r=2,scores={isAlive=1}] isAlive 0
### 当不存在isAlive.@s=1的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/chapter4/4_4/game_lose

## --- 召唤怪物 ---
## 当time.monsterRefreshLeft = 0时代表该生成怪物了

### 当刷新倒计时为0时，先指定刷新位置（randomLocation=1~5）
execute @e[name=monsterRefreshLeft,scores={time=0}] ~~~ scoreboard players random @e[name=randomLocation] background 1 5
execute @e[name=randomLocation,scores={background=1}] ~~~ summon je:marker -122 -31 6 "as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=2}] ~~~ summon je:marker -130 -31 -2 "as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=3}] ~~~ summon je:marker -130 -31 14 "as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=4}] ~~~ summon je:marker -130 -31 6 "as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=5}] ~~~ summon je:marker -138 -31 6 "as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=1..5}] ~~~ scoreboard players set @s background 0

### 指定刷新位置后指定刷新何种怪物
execute @e[name=monsterRefreshLeft,scores={time=0}] ~~~ scoreboard players random @e[name=randomMonster] background 1 8
execute @e[name=randomMonster,scores={background=1}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "as_summoner" "creeper2Summoner"
execute @e[name=randomMonster,scores={background=2}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "as_summoner" "drowned2Summoner"
execute @e[name=randomMonster,scores={background=3}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "as_summoner" "drownedWithTridentSummoner"
execute @e[name=randomMonster,scores={background=4}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "as_summoner" "skeleton2Summoner"
execute @e[name=randomMonster,scores={background=5}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "as_summoner" "spider2Summoner"
execute @e[name=randomMonster,scores={background=6}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "as_summoner" "stray2Summoner"
execute @e[name=randomMonster,scores={background=7}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "as_summoner" "zombie2Summoner"
execute @e[name=randomMonster,scores={background=8}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "as_summoner" "zombieBaby2Summoner"
execute @e[name=randomMonster,scores={background=1..8}] ~~~ function methods/title
execute @e[name=randomMonster,scores={background=1..8}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c注意！某个随机位置即将生成怪物！"}]}
execute @e[name=randomMonster,scores={background=1..8}] ~~~ scoreboard players set @e[name=monsterSummonDelay] time 40
execute @e[name=randomMonster,scores={background=1..8}] ~~~ kill @e[name=summonLocation]
execute @e[name=randomMonster,scores={background=1..8}] ~~~ scoreboard players set @s background 0

### 刷新完成后重新指定刷新倒计时
execute @e[name=monsterRefreshLeft,scores={time=0}] ~~~ scoreboard players random @s time 3 10

## --- 设置上一波完成标记为0 ---
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ scoreboard players set @s background 0

## --- 怪物延迟生成器计时 ---

### 每刻为变量time.monsterSummonDelay -= 1
scoreboard players add @e[name=monsterSummonDelay,scores={time=0..}] time -1
### 调用相关生成器并循环执行
execute @e[name=monsterSummonDelay,scores={time=0..}] ~~~ function methods/monsters/summoner_controller

## --- 给予守卫者药效 ---
execute @e[name=tick,scores={time=0}] ~~~ effect @e[type=guardian] resistance 30 10 true