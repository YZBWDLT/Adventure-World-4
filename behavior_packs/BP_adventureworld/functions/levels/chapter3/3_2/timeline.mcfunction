# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 第一波，清除水 ---
execute @e[name=wave,scores={background=1}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ function levels/chapter3/3_2/water_clear

## --- 第二波，生成怪物后，令水位上涨 ---
execute @e[name=wave,scores={background=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=0}] ~~~ function levels/chapter3/3_2/water_rise
