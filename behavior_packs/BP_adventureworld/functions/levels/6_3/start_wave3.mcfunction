# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=632}] ~~~ execute @a[tag=alive] -70 -39 3 function system/summon/witch2
execute @e[name=level,scores={background=632}] ~~~ execute @a[tag=alive] -79 -39 3 function system/summon/witch2
execute @e[name=level,scores={background=632}] ~~~ execute @a[tag=alive] -71 -37 -13 function system/summon/witch2
execute @e[name=level,scores={background=632}] ~~~ execute @a[tag=alive] -78 -37 -11 function system/summon/cave_spider3
execute @e[name=level,scores={background=632}] ~~~ execute @a[tag=alive] -74 -35 -2 function system/summon/cave_spider3

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more