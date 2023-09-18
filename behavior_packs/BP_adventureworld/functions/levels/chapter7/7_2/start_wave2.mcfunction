# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -163 -18 108 function system/summon/hoglin2
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -164 -18 104 function system/summon/hoglin2
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -165 -17 114 function system/summon/hoglin2
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -161 -18 103 function system/summon/hoglin3
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -180 -18 111 function system/summon/piglin2
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -177 -17 109 function system/summon/piglin2
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -177 -18 114 function system/summon/piglin2
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -177 -16 107 function system/summon/piglin3
execute @e[name=level,scores={background=721}] ~~~ execute @a[scores={isAlive=1}] -181 -17 105 function system/summon/piglin4

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more