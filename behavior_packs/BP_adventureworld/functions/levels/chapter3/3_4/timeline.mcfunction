# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 第一波时，清除水 ---
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ function levels/chapter3/3_4/water_clear

## --- 第二、三、四波，生成怪物后水位上涨 ---
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ structure load 3_4_layer1_water -178 -16 18 0_degrees none layer_by_layer 5.00
execute @e[name=wave,scores={background=3}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ structure load 3_4_layer2 -178 -4 18 0_degrees none layer_by_layer 5.00
execute @e[name=wave,scores={background=4}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ structure load 3_4_layer3 -178 6 18 0_degrees none layer_by_layer 5.00
execute @e[name=wave,scores={background=2..4}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ function lib/title
execute @e[name=wave,scores={background=2..4}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§c注意！水位上涨！"}]}
