# ===== 技能触发时：恢复血量 =====

# 设定技能时长
    scoreboard players set temp.skillLength data -2
# 设定标题
    function aw/lib/modify_data/title
    titleraw @a subtitle {"rawtext":[{"translate":"§c唤魔法师已恢复了一些血量！"}]}
# 恢复血量
    ## 一阶段时，恢复 16 血量（瞬间治疗 IV）
    execute if score temp.stage data matches 1 run effect @e[type=evocation_illager] instant_health 1 3 true
    ## 二阶段时，恢复 32 血量（瞬间治疗 V）
    execute if score temp.stage data matches 2 run effect @e[type=evocation_illager] instant_health 1 4 true
