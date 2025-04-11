# ===== 怪物数目检测器 =====
# 返回符合条件的怪物数目。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · data.monsterAmount=(怪物总数，≥0) | data.monsterAmount=(怪物总数)-4 (≥0，仅4-4除守卫者)

scoreboard players set monsterAmount data 0
execute as @e[family=monster] at @s run scoreboard players add monsterAmount data 1
execute if score chapter data matches 4 if score level data matches 4 run scoreboard players remove monsterAmount data 4
execute if score monsterAmount data matches ..-1 run scoreboard players set monsterAmount data 0
