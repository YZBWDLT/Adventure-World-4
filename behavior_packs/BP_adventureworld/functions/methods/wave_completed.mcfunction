# ===== 波潮完成 =====
# 调用此函数以用于标记上一波处于已完成状态，并重置怪物刷新计时

scoreboard players add @e[name=wave] background 1
scoreboard players set @e[name=lastWaveCompleted] background 1
scoreboard players set @e[name=monsterSummonDelay] time 40

## --- 补充箭 ---
give @a[hasitem={item=bow}] arrow 36