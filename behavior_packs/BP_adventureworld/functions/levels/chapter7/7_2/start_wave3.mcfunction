# 开始游戏 - 后续波

## 生成生物
## 格式：execute @e[name=level,scores={background=关卡代码}] ~~~ execute @a[scores={isAlive=1}] 生成位置 function 生成的怪物
execute @e[name=level,scores={background=722}] ~~~ execute @a[scores={isAlive=1}] -162 -18 106 function system/summon/piglin_brute

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_wave_more