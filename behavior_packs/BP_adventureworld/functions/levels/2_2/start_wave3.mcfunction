# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=222}] ~~~ execute @a[tag=alive] -87 -17 68 function system/summon/creeper1
execute @e[name=level,scores={background=222}] ~~~ execute @a[tag=alive] -74 -12 64  function system/summon/zombie2
execute @e[name=level,scores={background=222}] ~~~ execute @a[tag=alive] -98 -3 63 function system/summon/zombie2
execute @e[name=level,scores={background=222}] ~~~ execute @a[tag=alive] -98 -12 77 function system/summon/skeleton1
execute @e[name=level,scores={background=222}] ~~~ execute @a[tag=alive] -78 -5 65 function system/summon/spider1
execute @e[name=level,scores={background=222}] ~~~ execute @a[tag=alive] -89 -7 64 function system/summon/spider1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more