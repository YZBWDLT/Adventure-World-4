# ===== 当玩家击杀怪物后触发此函数 =====

## 添加一个击杀数 | 仅在全流程时记录
execute if score isSingleLevel data matches 0 run scoreboard players add @s killCount 1
