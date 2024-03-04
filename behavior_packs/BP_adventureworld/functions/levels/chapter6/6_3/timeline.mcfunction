# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 第2波，生成怪物前，令岩浆下降 ---
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=30}] ~~~ function levels/chapter6/6_3/lava_drop_phase_1

## --- 第4波，生成怪物前，再令岩浆下降 ---
execute @e[name=wave,scores={data=4}] ~~~ execute @e[name=monsterSummonDelay,scores={time=30}] ~~~ function levels/chapter6/6_3/lava_drop_phase_2
