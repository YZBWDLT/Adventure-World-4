# 关卡检测器(循环执行)
# 本检测器需在active.levelTesting=1时运行，否则检测器不工作。

# -----关卡功能检测-----
## ===在随机时间后，流下岩浆===
### 记录岩浆刷新时间，每1秒减1分
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players remove @e[name=lavaWarningLeft] time 1
### 剩余5秒时，提醒玩家
execute @e[name=lavaWarningLeft,scores={time=0..8}] ~~~ particle aw:lava_warning -78 -40 35
### 剩余0秒时，根据阶段上涨层数
execute @e[name=level,scores={stats=640}] ~~~ execute @e[name=lavaWarningLeft,scores={time=0}] ~~~ fill -89 -40 49 -61 -40 21 minecraft:lava[] keep
### 岩浆溢出5秒后，收回岩浆并重新计时
execute @e[name=lavaWarningLeft,scores={time=-10}] ~~~ fill -89 -40 49 -61 -40 21 minecraft:air[] replace minecraft:lava[]
scoreboard players random @e[name=lavaWarningLeft,scores={time=-11}] time 20 40

## ===BOSS一阶段，随机传送===
## ===BOSS二阶段，召唤怪物===
## ===BOSS三阶段，自动回血===

# -----成功判定-----
## 当检测到没有怪物而玩家仍处于游玩状态时，认定玩家已经通过这一波
## 此时将对level记分板加分（表示已完成波数+1），并暂停关卡检测和玩家的游玩状态
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={stats=0}] ~~~ scoreboard players set @e[name=level] stats 641
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={stats=0}] ~~~ scoreboard players set @e[name=levelTesting] active 0
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={stats=0}] ~~~ tag @a remove playing

## 当玩家结束战斗后给予奖励
execute @e[name=level,scores={stats=641}] ~~~ execute @a[tag=!playing,c=1] ~~~ function levels/6_4/bonus

# -----失败判定-----

## 对在重生点的玩家移除alive标签
execute @a[x=-76,y=-30,z=34,dx=2,dy=3,dz=2] ~~~ tag @s remove alive

## 当不存在标签为alive的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ function levels/6_4/game_lose

## 游戏失败后，停止关卡检测器的工作，并移除多余的绳枪
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ scoreboard players set @e[name=levelTesting] active 0
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ tag @a remove playing
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ kill @e[family=hookshot]