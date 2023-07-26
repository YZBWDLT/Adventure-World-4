# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=741}] ~~~ execute @a[tag=alive] -231 -7 86 function system/summon/magma_cube_small1
execute @e[name=level,scores={stats=741}] ~~~ execute @a[tag=alive] -225 -17 109 function system/summon/magma_cube_small1
execute @e[name=level,scores={stats=741}] ~~~ execute @a[tag=alive] -242 -16 99 function system/summon/magma_cube_small2
execute @e[name=level,scores={stats=741}] ~~~ execute @a[tag=alive] -236 -8 93 function system/summon/magma_cube_small2
execute @e[name=level,scores={stats=741}] ~~~ execute @a[tag=alive] -224 -16 91 function system/summon/magma_cube_middle1
execute @e[name=level,scores={stats=740}] ~~~ execute @a[tag=alive] -238 -8 103 function system/summon/skeleton1
## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more