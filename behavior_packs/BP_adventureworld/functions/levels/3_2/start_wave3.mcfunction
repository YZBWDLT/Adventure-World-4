# 开始游戏 - 后续波

## 清除原始怪物，防止玩家死掉后重新开始还有多余的怪物
kill @e[family=monster]

## 生成生物
## 格式：execute @e[name=level,scores={stats=关卡代码}] ~~~ execute @a[tag=alive] 生成位置 function 生成的怪物
execute @e[name=level,scores={stats=322}] ~~~ execute @a[tag=alive] -186 -21 15 function system/summon/guardian1
execute @e[name=level,scores={stats=322}] ~~~ execute @a[tag=alive] -185 -21 5 function system/summon/guardian1
execute @e[name=level,scores={stats=322}] ~~~ execute @a[tag=alive] -175 -21 5 function system/summon/guardian1
execute @e[name=level,scores={stats=322}] ~~~ execute @a[tag=alive] -180 -21 12 function system/summon/guardian1

## 开启所有关卡通用的开始关卡函数
function levels/all_levels/start_wave_more