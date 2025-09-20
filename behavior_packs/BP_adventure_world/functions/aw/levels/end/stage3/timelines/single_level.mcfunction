# ===== 开启特定关卡 =====

# [40] 关卡前准备

## 1-X
execute if score timeline time matches 40 if score temp.level settings matches 1..3 run function aw/levels/chapter1/prepare_single_level
## 2-X
execute if score timeline time matches 40 if score temp.level settings matches 4..6 run function aw/levels/chapter2/prepare_single_level
## 3-X
execute if score timeline time matches 1..40 if score temp.level settings matches 8 run function aw/levels/chapter3/level2/events/clear_water
execute if score timeline time matches 1..40 if score temp.level settings matches 10 run function aw/levels/chapter3/level4/events/clear_water
execute if score timeline time matches 40 if score temp.level settings matches 7..10 run function aw/levels/chapter3/prepare_single_level
## 4-X
execute if score timeline time matches 40 if score temp.level settings matches 11..14 run function aw/levels/chapter4/prepare_single_level
## 6-X
execute if score timeline time matches 40 if score temp.level settings matches 15..18 run function aw/levels/chapter6/prepare_single_level
## 7-X
execute if score timeline time matches 1 if score temp.level settings matches 23 run structure load aw:7_5_phase1 -246 -54 23
execute if score timeline time matches 40 if score temp.level settings matches 19..23 run function aw/levels/chapter7/prepare_single_level

# [59] 应用设置变量、销毁临时变量
execute if score timeline time matches 59 run scoreboard players operation extraDifficulty settings = temp.extraDifficulty settings
execute if score timeline time matches 59 run scoreboard players reset temp.extraDifficulty settings

execute if score timeline time matches 59 run scoreboard players operation storyMode settings = temp.storyMode settings
execute if score timeline time matches 59 run scoreboard players reset temp.storyMode settings

# [120] 提示玩家准备

execute if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"§a请提前准备，试炼即将开始"}]}
execute if score timeline time matches 120 run function aw/levels/end/stage3/events/supply_items

# [200] 触发关卡

## 1-X
execute if score timeline time matches 200 if score temp.level settings matches 1..3 run function aw/levels/chapter1/start_single_level
## 2-X
execute if score timeline time matches 200 if score temp.level settings matches 4..6 run function aw/levels/chapter2/start_single_level
## 3-X
execute if score timeline time matches 200 if score temp.level settings matches 7..10 run function aw/levels/chapter3/start_single_level
## 4-X
execute if score timeline time matches 200 if score temp.level settings matches 11..14 run function aw/levels/chapter4/start_single_level
## 6-X
execute if score timeline time matches 200 if score temp.level settings matches 15..18 run function aw/levels/chapter6/start_single_level
## 7-X
execute if score timeline time matches 200 if score temp.level settings matches 19..23 run function aw/levels/chapter7/start_single_level
