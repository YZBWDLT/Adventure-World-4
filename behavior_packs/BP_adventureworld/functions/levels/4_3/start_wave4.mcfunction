# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=433}] ~~~ execute @a[scores={isAlive=1}] -157 -11 15 function system/summon/drowned2
execute @e[name=level,scores={background=433}] ~~~ execute @a[scores={isAlive=1}] -155 -7 0 function system/summon/drowned2
execute @e[name=level,scores={background=433}] ~~~ execute @a[scores={isAlive=1}] -154 -11 6 function system/summon/drowned3
execute @e[name=level,scores={background=433}] ~~~ execute @a[scores={isAlive=1}] -163 -7 -0 function system/summon/drowned3
execute @e[name=level,scores={background=433}] ~~~ execute @a[scores={isAlive=1}] -153 -14 2 function system/summon/guardian1
execute @e[name=level,scores={background=433}] ~~~ execute @a[scores={isAlive=1}] -163 -14 11 function system/summon/guardian1
execute @e[name=level,scores={background=433}] ~~~ execute @a[scores={isAlive=1}] -152 -6 7 function system/summon/stray2
execute @e[name=level,scores={background=433}] ~~~ execute @a[scores={isAlive=1}] -148 -9 -0 function system/summon/stray2

## 开启所有关卡通用的开始关卡函数
function methods/all_levels/start_wave_more