# ===== 关卡时间线 =====
# 循环执行，需在active.timeline>=1时运行，否则检测器不工作。

## --- 第二波，生成怪物后地面塌陷 ---
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ structure load 4_1_phase2 -168 16 -23 0_degrees none block_by_block 1.25
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ function lib/title
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"§3小心！雪塌陷了！"}]}
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ camerashake add @a[scores={isAlive=1}] 1.00 2.50
