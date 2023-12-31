# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 令时间流逝 ---
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players remove @e[name=timeLeft] time 1
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players remove @e[name=monsterRefreshLeft] time 1

## --- 成功判定 ---
### 检测到时间结束后，结束关卡
execute @e[name=timeLeft,scores={time=..0}] ~~~ function levels/chapter4/4_4/bonus

## --- 召唤怪物 ---
## 当time.monsterRefreshLeft = 0时代表该生成怪物了

### 当刷新倒计时为0时，先指定刷新位置（randomLocation=1~5）
execute @e[name=monsterRefreshLeft,scores={time=0}] ~~~ scoreboard players random @e[name=randomLocation] background 1 5
execute @e[name=randomLocation,scores={background=1}] ~~~ summon je:marker -122 -31 6 "aw:as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=2}] ~~~ summon je:marker -130 -31 -2 "aw:as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=3}] ~~~ summon je:marker -130 -31 14 "aw:as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=4}] ~~~ summon je:marker -130 -31 6 "aw:as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=5}] ~~~ summon je:marker -138 -31 6 "aw:as_summoner" "summonLocation"
execute @e[name=randomLocation,scores={background=1..5}] ~~~ scoreboard players set @s background 0

### 指定刷新位置后指定刷新何种怪物
execute @e[name=monsterRefreshLeft,scores={time=0}] ~~~ scoreboard players random @e[name=randomMonster] background 1 8
execute @e[name=randomMonster,scores={background=1}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "aw:as_summoner" "creeperEnergySummoner"
execute @e[name=randomMonster,scores={background=2}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "aw:as_summoner" "drowned2Summoner"
execute @e[name=randomMonster,scores={background=3}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "aw:as_summoner" "drownedWithTridentSummoner"
execute @e[name=randomMonster,scores={background=4}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "aw:as_summoner" "skeleton2Summoner"
execute @e[name=randomMonster,scores={background=5}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "aw:as_summoner" "spider2Summoner"
execute @e[name=randomMonster,scores={background=6}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "aw:as_summoner" "stray2Summoner"
execute @e[name=randomMonster,scores={background=7}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "aw:as_summoner" "zombie2Summoner"
execute @e[name=randomMonster,scores={background=8}] ~~~ execute @e[name=summonLocation] ~~~ summon je:marker ~~~ "aw:as_summoner" "zombieBaby2Summoner"
execute @e[name=randomMonster,scores={background=1..8}] ~~~ function methods/title
execute @e[name=randomMonster,scores={background=1..8}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c注意！某个随机位置即将生成怪物！"}]}
execute @e[name=randomMonster,scores={background=1..8}] ~~~ function methods/monster_summon_delay/enable_40ticks
execute @e[name=randomMonster,scores={background=1..8}] ~~~ kill @e[name=summonLocation]
execute @e[name=randomMonster,scores={background=1..8}] ~~~ scoreboard players set @s background 0

### 刷新完成后重新指定刷新倒计时
execute @e[name=monsterRefreshLeft,scores={time=0}] ~~~ scoreboard players random @s time 4 12

## --- 给予守卫者药效 ---
execute @e[name=tick,scores={time=0}] ~~~ effect @e[type=guardian] resistance 30 10 true