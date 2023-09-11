# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=711}] ~~~ execute @a[scores={isAlive=1}] -143 -17 100 function system/summon/zombified_piglin2
execute @e[name=level,scores={background=711}] ~~~ execute @a[scores={isAlive=1}] -130 -18 109 function system/summon/zombified_piglin2
execute @e[name=level,scores={background=711}] ~~~ execute @a[scores={isAlive=1}] -126 -17 112 function system/summon/zombified_piglin2
execute @e[name=level,scores={background=711}] ~~~ execute @a[scores={isAlive=1}] -126 -17 112 function system/summon/zombified_piglin2
execute @e[name=level,scores={background=711}] ~~~ execute @a[scores={isAlive=1}] -118 -17 107 function system/summon/zombified_piglin3
execute @e[name=level,scores={background=711}] ~~~ execute @a[scores={isAlive=1}] -118 -17 107 function system/summon/zombified_piglin3

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more