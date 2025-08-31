# ===== 玩家进入神殿 =====

# 恢复所有数据设置
    function aw/lib/modify_data/init/data
# 触发开幕时的选择函数
    execute if score temp.storyMode settings matches 0 run function aw/levels/open/before_stage/events/start_combat_mode
    execute if score temp.storyMode settings matches 1 run function aw/levels/open/before_stage/events/start_story_mode

# 移除 stage4 的按钮
    fill -13 2 86 -18 1 87 air
# 应用设置变量
    scoreboard players operation extraDifficulty settings = temp.extraDifficulty settings
    scoreboard players operation storyMode settings = temp.storyMode settings
# 销毁临时变量
    scoreboard players reset temp.extraDifficulty settings
    scoreboard players reset temp.difficulty settings
    scoreboard players reset temp.storyMode settings
