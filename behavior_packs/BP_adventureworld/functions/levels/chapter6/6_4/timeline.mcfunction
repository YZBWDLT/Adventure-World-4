# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 关卡功能 ---
### time.timeline每秒循环 | 本关的active.timeline=1，会自动每刻+1分
scoreboard players remove @e[name=timeline,scores={time=20..}] time 20
### 在随机时间后流下岩浆 | 剩余8秒时提醒；流出经过10秒后收回并重新计时
execute @e[name=timeline,scores={time=19}] ~~~ scoreboard players remove @e[name=lavaWarningLeft] time 1
execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=lavaWarningLeft,scores={time=0..8}] ~~~ particle aw:lava_warning -78 -40 35
execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=lavaWarningLeft,scores={time=0}] ~~~ fill -89 -40 49 -61 -40 21 lava[] keep
execute @e[name=timeline,scores={time=19}] ~~~ execute @e[name=lavaWarningLeft,scores={time=-10}] ~~~ fill -89 -40 49 -61 -40 21 air[] replace lava[]
execute @e[name=timeline,scores={time=19}] ~~~ scoreboard players random @e[name=lavaWarningLeft,scores={time=-11}] time 20 40

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
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function levels/chapter6/6_4/bonus

## --- 失败判定 ---

### 为死亡玩家添加抗火
effect @a[scores={isAlive=0}] fire_resistance 30 0 true
### 当不存在isAlive.@s=1的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/chapter6/6_4/game_lose

## --- 召唤怪物 ---

### 显示标题准备工作
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ function methods/title
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a title {"rawtext":[{"translate":"§l§cBOSS 来 袭"}]}
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c6-4"}]}
### 召唤生成器
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ summon je:marker -74 -35 -2 "aw:as_summoner" "blazeKingSummoner"

## --- 设置上一波完成标记为0 ---
execute @e[name=lastWaveCompleted,scores={background=1}] ~~~ scoreboard players set @s background 0

