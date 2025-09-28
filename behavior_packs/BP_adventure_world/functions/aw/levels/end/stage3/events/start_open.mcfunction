# ===== 开始全流程 =====

# 恢复所有数据设置
    function aw/lib/modify_data/init/data

# 应用设置变量
    scoreboard players operation extraDifficulty settings = temp.extraDifficulty settings
    scoreboard players operation storyMode settings = temp.storyMode settings

# 触发开幕时的选择函数
    execute if score temp.storyMode settings matches 0 run function aw/levels/open/before_stage/events/start_combat_mode
    execute if score temp.storyMode settings matches 1 run function aw/levels/open/before_stage/events/start_story_mode

# 销毁临时变量
    scoreboard players reset temp.extraDifficulty settings
    scoreboard players reset temp.difficulty settings
    scoreboard players reset temp.storyMode settings
