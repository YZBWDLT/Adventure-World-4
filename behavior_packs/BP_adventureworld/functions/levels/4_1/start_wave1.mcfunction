# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 410

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -170 17 -19 -170 19 -21 minecraft:ice

## 复制建筑（如果需要的话）
structure load 4_1_phase1 -168 16 -23

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -156 17 -23

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=410}] ~~~ execute @a[tag=alive] -165 17 -17 function system/summon/guardian1
execute @e[name=level,scores={background=410}] ~~~ execute @a[tag=alive] -162 17 -22 function system/summon/drowned3
execute @e[name=level,scores={background=410}] ~~~ execute @a[tag=alive] -161 17 -20 function system/summon/drowned2
execute @e[name=level,scores={background=410}] ~~~ execute @a[tag=alive] -162 17 -16 function system/summon/drowned2
execute @e[name=level,scores={background=410}] ~~~ execute @a[tag=alive] -165 17 -23 function system/summon/skeleton1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave1

## 标题
title @a subtitle §c4-1