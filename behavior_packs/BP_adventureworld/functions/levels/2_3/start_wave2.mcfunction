# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=231}] ~~~ execute @a[tag=alive] -154 -21 66 function system/summon/creeper1
execute @e[name=level,scores={background=231}] ~~~ execute @a[tag=alive] -154 -21 56 function system/summon/creeper1
execute @e[name=level,scores={background=231}] ~~~ execute @a[tag=alive] -159 -21 61 function system/summon/creeper1
execute @e[name=level,scores={background=231}] ~~~ execute @a[tag=alive] -149 -21 61 function system/summon/creeper1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more