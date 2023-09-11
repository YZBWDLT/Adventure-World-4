# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=731}] ~~~ execute @a[scores={isAlive=1}] -197 -10 103 function system/summon/ghast1
execute @e[name=level,scores={background=731}] ~~~ execute @a[scores={isAlive=1}] -210 -6 98 function system/summon/ghast1
execute @e[name=level,scores={background=731}] ~~~ execute @a[scores={isAlive=1}] -200 -2 106 function system/summon/ghast2

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more
