# ===== 怪物数目检测器 =====
# 返回符合条件的怪物数目。输出为data.monsterAmount，且一定是>=0的。
# 调用此方法时：无需修饰。
# 备注：在4-4中，输出为实际怪物数量-4的值。

scoreboard players set monsterAmount data 0
execute as @e[family=monster] at @s run scoreboard players add monsterAmount data 1
execute if score chapter data matches 4 if score level data matches 4 run scoreboard players remove monsterAmount data 4
execute if score monsterAmount data matches ..-1 run scoreboard players set monsterAmount data 0
