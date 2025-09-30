# ===== 关卡游戏时时间线 =====
# 10-4 | 开始单关卡试炼

# --- 传送玩家到神殿 ---

## [1] 对于 7-5，提前加载结构
    execute if score timeline time matches 1 if score level settings matches 23 run structure load aw:7_5_phase1 -246 -54 23

## [1~40] 对于湖泊神殿的 3-2 和 3-4，提前清除水源
    execute if score timeline time matches 1..40 if score level settings matches 8 run function aw/levels/chapter3/level2/events/clear_water
    execute if score timeline time matches 1..40 if score level settings matches 10 run function aw/levels/chapter3/level4/events/clear_water

## [40] 关卡前准备
    ### 1-X
        execute if score timeline time matches 40 if score level settings matches 1..3 run function aw/levels/end/stage4/events/prepare/chapter1
    ### 2-X
        execute if score timeline time matches 40 if score level settings matches 4..6 run function aw/levels/end/stage4/events/prepare/chapter2
    ### 3-X
        execute if score timeline time matches 40 if score level settings matches 7..10 run function aw/levels/end/stage4/events/prepare/chapter3
    ### 4-X
        execute if score timeline time matches 40 if score level settings matches 11..14 run function aw/levels/end/stage4/events/prepare/chapter4
    ### 6-X
        execute if score timeline time matches 40 if score level settings matches 15..18 run function aw/levels/end/stage4/events/prepare/chapter6
    ### 7-X
        execute if score timeline time matches 40 if score level settings matches 19..23 run function aw/levels/end/stage4/events/prepare/chapter7

# --- 玩家准备阶段 ---

# [120] 提示玩家准备，显示物品栏 HUD，并给予玩家所有物品

    execute if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"§a请提前准备，试炼将在 15 秒后开始"}]}
    execute if score timeline time matches 120 run function aw/levels/end/stage4/events/supply_items
    execute if score timeline time matches 120 run hud @a reset hotbar
    execute if score timeline time matches 120 run hud @a reset progress_bar
    execute if score timeline time matches 120 run hud @a reset touch_controls

# [420] 解禁玩家，触发关卡
    execute if score timeline time matches 420 run function aw/lib/events/stop_dialogue_keep
    ## 1-X
        execute if score timeline time matches 420 if score level settings matches 1..3 run function aw/levels/end/stage4/events/start/chapter1
    ## 2-X
        execute if score timeline time matches 420 if score level settings matches 4..6 run function aw/levels/end/stage4/events/start/chapter2
    ## 3-X
        execute if score timeline time matches 420 if score level settings matches 7..10 run function aw/levels/end/stage4/events/start/chapter3
    ## 4-X
        execute if score timeline time matches 420 if score level settings matches 11..14 run function aw/levels/end/stage4/events/start/chapter4
    ## 6-X
        execute if score timeline time matches 420 if score level settings matches 15..18 run function aw/levels/end/stage4/events/start/chapter6
    ## 7-X
        execute if score timeline time matches 420 if score level settings matches 19..23 run function aw/levels/end/stage4/events/start/chapter7
