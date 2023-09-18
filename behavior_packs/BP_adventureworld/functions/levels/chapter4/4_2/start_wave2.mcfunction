# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=421}] ~~~ execute @a[scores={isAlive=1}] -149 7 12 function system/summon/drowned3
execute @e[name=level,scores={background=421}] ~~~ execute @a[scores={isAlive=1}] -148 7 2 function system/summon/drowned3
execute @e[name=level,scores={background=421}] ~~~ execute @a[scores={isAlive=1}] -156 7 5 function system/summon/drowned3
execute @e[name=level,scores={background=421}] ~~~ execute @a[scores={isAlive=1}] -159 7 10 function system/summon/stray2
execute @e[name=level,scores={background=421}] ~~~ execute @a[scores={isAlive=1}] -162 7 4 function system/summon/stray2
execute @e[name=level,scores={background=421}] ~~~ execute @a[scores={isAlive=1}] -159 7 -0 function system/summon/guardian1
execute @e[name=level,scores={background=421}] ~~~ execute @a[scores={isAlive=1}] -156 7 6 function system/summon/guardian1

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more