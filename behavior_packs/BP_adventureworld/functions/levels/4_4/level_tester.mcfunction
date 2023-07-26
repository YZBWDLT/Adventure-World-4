# 关卡检测器(循环执行)
# 本检测器需在active.levelTesting=1时运行，否则检测器不工作。

## 时间减少
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players remove @e[name=timeLeft] time 1
execute @e[name=tick,scores={time=0}] ~~~ scoreboard players remove @e[name=monsterRefreshLeft] time 1

execute @e[name=monsterRefreshLeft,scores={time=..0}] ~~~ function levels/4_4/random_monster

# -----成功判定-----

## 当时间减少到0时玩家胜利
execute @e[name=timeLeft,scores={time=..0}] ~~~ scoreboard players set @e[name=level] stats 441
execute @e[name=timeLeft,scores={time=..0}] ~~~ scoreboard players set @e[name=levelTesting] active 0
execute @e[name=timeLeft,scores={time=..0}] ~~~ tag @a remove playing

## 当玩家结束战斗后（例如1-3总共2波），那么给予奖励
## 当玩家还未结束战斗（有剩余波数），那么触发下一波
execute @e[name=level,scores={stats=441}] ~~~ execute @a[tag=!playing,c=1] ~~~ function levels/4_4/bonus

# -----失败判定-----

## 对在重生点的玩家移除alive标签
execute @a[x=-146,y=-24,z=5,dx=2,dy=3,dz=2] ~~~ tag @s remove alive

## 当不存在标签为alive的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ function levels/4_4/game_lose

## 游戏失败后，停止关卡检测器的工作，并移除多余的绳枪
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ scoreboard players set @e[name=levelTesting] active 0
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ tag @a remove playing
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ kill @e[family=hookshot]