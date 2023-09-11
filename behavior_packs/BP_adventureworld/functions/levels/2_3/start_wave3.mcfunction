# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=232}] ~~~ execute @a[scores={isAlive=1}] -154 -21 66 function system/summon/zombie2
execute @e[name=level,scores={background=232}] ~~~ execute @a[scores={isAlive=1}] -154 -21 56 function system/summon/zombie2
execute @e[name=level,scores={background=232}] ~~~ execute @a[scores={isAlive=1}] -159 -21 61 function system/summon/zombie2
execute @e[name=level,scores={background=232}] ~~~ execute @a[scores={isAlive=1}] -149 -21 61 function system/summon/zombie2
execute @e[name=level,scores={background=232}] ~~~ execute @a[scores={isAlive=1}] -154 -15 59 function system/summon/zombie2

## 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave_more