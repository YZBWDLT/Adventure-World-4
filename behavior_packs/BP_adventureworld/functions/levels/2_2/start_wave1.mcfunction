# 开始游戏 - 第一波

## 设置level分数
scoreboard players set @e[name=level] background 220

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 封闭入口与出口
fill -70 0 68 -70 3 70 minecraft:cobblestone_wall["wall_block_type":"diorite"]
fill -104 -17 69 -104 -15 67 minecraft:cobblestone_wall["wall_block_type":"diorite"]

## 复制建筑（如果需要的话）
# structure load (结构名) (读取的坐标位置)

## 设置重生点
## 请设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -83 -12 81

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=220}] ~~~ execute @a[scores={isAlive=1}] -88 0 72 function system/summon/spider1
execute @e[name=level,scores={background=220}] ~~~ execute @a[scores={isAlive=1}] -83 0 62 function system/summon/spider1
execute @e[name=level,scores={background=220}] ~~~ execute @a[scores={isAlive=1}] -81 -6 69 function system/summon/spider1
execute @e[name=level,scores={background=220}] ~~~ execute @a[scores={isAlive=1}] -93 -9 65 function system/summon/spider1
execute @e[name=level,scores={background=220}] ~~~ execute @a[scores={isAlive=1}] -92 -17 62 function system/summon/spider1

## 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave1

## 标题
title @a subtitle §c2-2