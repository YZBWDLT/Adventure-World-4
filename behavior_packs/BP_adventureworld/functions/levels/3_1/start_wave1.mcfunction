# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 310

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -199 -21 29 -197 -19 29 minecraft:cobblestone_wall["wall_block_type":"prismarine"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -191 -20 39

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=310}] ~~~ execute @a[scores={isAlive=1}] -188 -21 26 function system/summon/skeleton1
execute @e[name=level,scores={background=310}] ~~~ execute @a[scores={isAlive=1}] -187 -21 33 function system/summon/spider1
execute @e[name=level,scores={background=310}] ~~~ execute @a[scores={isAlive=1}] -197 -21 34 function system/summon/drowned1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c3-1