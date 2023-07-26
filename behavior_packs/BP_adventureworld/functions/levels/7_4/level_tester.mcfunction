# 关卡检测器(循环执行)
# 本检测器需在active.levelTesting=1时运行，否则检测器不工作。

# -----特殊内容-----
## 当生物坠入岩浆海中时，清除之
execute @e[type=!player] ~~~ execute @s[x=~,y=-29,z=~,dx=0,dy=5,dz=0] ~~~ detect ~~~ lava -1 kill @s

# -----成功判定-----
## 当检测到没有怪物而玩家仍处于游玩状态时，认定玩家已经通过这一波
## 此时将对level记分板加分（表示已完成波数+1），并暂停关卡检测和玩家的游玩状态
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={stats=0}] ~~~ scoreboard players add @e[name=level] stats 1
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={stats=0}] ~~~ scoreboard players set @e[name=levelTesting] active 0
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={stats=0}] ~~~ tag @a remove playing

## 当玩家结束战斗后（例如1-3总共2波），那么给予奖励
## 当玩家还未结束战斗（有剩余波数），那么触发下一波
execute @e[name=level,scores={stats=745}] ~~~ execute @a[tag=!playing,c=1] ~~~ function levels/7_4/bonus
execute @e[name=level,scores={stats=741}] ~~~ execute @a[tag=!playing] ~~~ function levels/7_4/start_wave2
execute @e[name=level,scores={stats=742}] ~~~ execute @a[tag=!playing] ~~~ function levels/7_4/start_wave3
execute @e[name=level,scores={stats=743}] ~~~ execute @a[tag=!playing] ~~~ function levels/7_4/start_wave4
execute @e[name=level,scores={stats=744}] ~~~ execute @a[tag=!playing] ~~~ function levels/7_4/start_wave5

# -----失败判定-----

## 对在重生点的玩家移除alive标签
execute @a[x=-248,y=-6,z=100,dx=2,dy=3,dz=2] ~~~ tag @s remove alive

## 当不存在标签为alive的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ function levels/7_4/game_lose

## 游戏失败后，停止关卡检测器的工作，并移除多余的绳枪
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ scoreboard players set @e[name=levelTesting] active 0
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ tag @a remove playing
execute @e[name=alivePlayersAmount,scores={stats=0}] ~~~ kill @e[family=hookshot]