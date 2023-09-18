# 开始游戏 - 后续波

## 提醒
function methods/title
title @a subtitle §3小心！雪塌陷了！
tellraw @s {"rawtext":[{"text":"§7别忘了用皮革靴子哦~"}]}

## 震动视角
camerashake add @a[scores={isAlive=1}] 1.00 2.50

## 复制结构
structure load 4_1_phase2 -168 16 -23 0_degrees none block_by_block 1.25

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=411}] ~~~ execute @a[scores={isAlive=1}] -160 12 -22 function system/summon/stray2
execute @e[name=level,scores={background=411}] ~~~ execute @a[scores={isAlive=1}] -165 17 -16 function system/summon/stray2
execute @e[name=level,scores={background=411}] ~~~ execute @a[scores={isAlive=1}] -164 12 -17 function system/summon/drowned2
execute @e[name=level,scores={background=411}] ~~~ execute @a[scores={isAlive=1}] -160 17 -25 function system/summon/drowned2

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more