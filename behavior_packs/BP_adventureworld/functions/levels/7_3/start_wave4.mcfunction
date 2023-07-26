# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=733}] ~~~ execute @a[tag=alive] -195 -18 96 function system/summon/skeleton3
execute @e[name=level,scores={stats=733}] ~~~ execute @a[tag=alive] -202 -16 96 function system/summon/skeleton4
execute @e[name=level,scores={stats=733}] ~~~ execute @a[tag=alive] -214 -18 95 function system/summon/skeleton_with_sword3
execute @e[name=level,scores={stats=733}] ~~~ execute @a[tag=alive] -203 -17 104 function system/summon/skeleton_with_sword4

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more
