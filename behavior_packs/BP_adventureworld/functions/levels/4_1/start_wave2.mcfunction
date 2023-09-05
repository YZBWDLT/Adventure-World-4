# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 提醒
title @a times 0 60 0
title @a title §1
title @a subtitle §3小心！雪塌陷了！
tellraw @s {"rawtext":[{"text":"§7别忘了用皮革靴子哦~"}]}

## 震动视角
camerashake add @a[tag=alive] 1.00 2.50

## 复制结构
structure load 4_1_phase2 -168 16 -23 0_degrees none block_by_block 1.25

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=411}] ~~~ execute @a[tag=alive] -159 12 -22 function system/summon/stray2
execute @e[name=level,scores={background=411}] ~~~ execute @a[tag=alive] -165 17 -16 function system/summon/stray2
execute @e[name=level,scores={background=411}] ~~~ execute @a[tag=alive] -164 12 -17 function system/summon/drowned2
execute @e[name=level,scores={background=411}] ~~~ execute @a[tag=alive] -160 17 -25 function system/summon/drowned2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more