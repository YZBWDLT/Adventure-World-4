# ===== 技能触发时：岩浆上涨 =====

# 设定技能时长
    scoreboard players set temp.skillLength data -10
# 设定标题
    function aw/lib/events/show_empty_title
    execute if score temp.stage data matches 1 run titleraw @a subtitle {"rawtext":[{"translate":"§c熔岩上涨！及时躲到高处！"}]}
    execute if score temp.stage data matches 2 run titleraw @a subtitle {"rawtext":[{"translate":"§c熔岩即将淹没平台！！迅速躲到更高的地方！"}]}
