# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=733}] ~~~ execute @a[scores={isAlive=1}] -195 -18 96 function system/summon/skeleton3
execute @e[name=level,scores={background=733}] ~~~ execute @a[scores={isAlive=1}] -202 -16 96 function system/summon/skeleton4
execute @e[name=level,scores={background=733}] ~~~ execute @a[scores={isAlive=1}] -214 -18 95 function system/summon/skeleton_with_sword3
execute @e[name=level,scores={background=733}] ~~~ execute @a[scores={isAlive=1}] -203 -17 104 function system/summon/skeleton_with_sword4

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more
