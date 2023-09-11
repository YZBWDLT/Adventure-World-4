# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 标题提醒
title @a times 0 60 0
title @a title §c§lBOSS 来 袭
title @a subtitle §1

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=233}] ~~~ execute @a[scores={isAlive=1}] -154 -15 63 function system/summon/skeleton_king
execute @e[name=level,scores={background=233}] ~~~ execute @a[scores={isAlive=1}] -154 -21 64 function system/summon/skeleton1
execute @e[name=level,scores={background=233}] ~~~ execute @a[scores={isAlive=1}] -154 -21 58 function system/summon/skeleton1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more