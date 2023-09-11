# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -156 -6 6 function system/summon/drowned_with_trident2
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -150 -2 5 function system/summon/drowned2
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -163 3 11 function system/summon/drowned2
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -162 -6 -0 function system/summon/drowned2
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -150 -8 14 function system/summon/drowned2
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -159 -9 4 function system/summon/drowned3
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -154 -7 -0 function system/summon/guardian1
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -159 -13 14 function system/summon/stray2
execute @e[name=level,scores={background=432}] ~~~ execute @a[scores={isAlive=1}] -148 -9 -0 function system/summon/stray2

## 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave_more