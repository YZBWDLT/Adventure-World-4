# ===== 当玩家击杀怪物后触发此函数 =====

## 添加一个击杀数 | 仅在全流程时记录
execute if score isSingleLevel data matches 0 run scoreboard players add @s killCount 1

## 当玩家击杀怪物后，触发 4-4 的事件
execute if score chapter data matches 4 if score level data matches 4 run function aw/levels/chapter4/level4/events/player_killed_monster
