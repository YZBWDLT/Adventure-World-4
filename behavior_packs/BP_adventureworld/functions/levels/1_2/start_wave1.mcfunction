# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 120

##【无需更改】 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -127 5 50 -125 7 50 minecraft:cobblestone_wall["wall_block_type":"sandstone"]

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -136 9 58

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=120}] ~~~ execute @a[tag=alive] -120 11 64 function system/summon/skeleton1
execute @e[name=level,scores={background=120}] ~~~ execute @a[tag=alive] -132 8 64 function system/summon/zombie1
execute @e[name=level,scores={background=120}] ~~~ execute @a[tag=alive] -126 7 58 function system/summon/zombie1

##【无需更改】 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c1-2