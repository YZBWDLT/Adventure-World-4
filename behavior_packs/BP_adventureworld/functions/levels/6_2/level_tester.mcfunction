# 关卡检测器(循环执行)
# 本检测器需在active.timeline>=1时运行，否则检测器不工作。

# -----成功判定-----
## 当检测到没有怪物而玩家仍处于游玩状态时，认定玩家已经通过这一波
## 此时将对level记分板加分（表示已完成波数+1），并暂停关卡检测和玩家的游玩状态
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={background=0}] ~~~ scoreboard players add @e[name=level] background 1
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={background=0}] ~~~ function methods/timeline/disable
execute @a[tag=playing,c=1] ~~~ execute @e[name=monsterAmount,scores={background=0}] ~~~ tag @a remove playing

## 当玩家结束战斗后（例如1-3总共2波），那么给予奖励
## 当玩家还未结束战斗（有剩余波数），那么触发下一波
execute @e[name=level,scores={background=623}] ~~~ execute @a[tag=!playing,c=1] ~~~ function levels/6_2/bonus
execute @e[name=level,scores={background=621}] ~~~ execute @a[tag=!playing] ~~~ function levels/6_2/start_wave2
execute @e[name=level,scores={background=622}] ~~~ execute @a[tag=!playing] ~~~ function levels/6_2/start_wave3

# -----失败判定-----

## 对在重生点的玩家移除alive标签
execute @a[x=-79,y=-12,z=-31,dx=2,dy=3,dz=2] ~~~ tag @s remove alive

## 当不存在标签为alive的玩家时，游戏失败
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function levels/6_2/game_lose

## 游戏失败后，停止关卡检测器的工作，并移除多余的绳枪
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ function methods/timeline/disable
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ tag @a remove playing
execute @e[name=alivePlayersAmount,scores={background=0}] ~~~ kill @e[family=hookshot]