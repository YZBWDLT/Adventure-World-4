# ===== 玩家进入神殿 =====

# 恢复所有数据设置
    function aw/lib/modify_data/init/data
# 触发 stage5
    function aw/levels/open/stage5/start

# 移除 stage4 的按钮
    fill -13 2 86 -18 1 87 air
# 应用设置变量
    scoreboard players operation extraDifficulty settings = temp.extraDifficulty settings
    scoreboard players operation stroyMode settings = temp.stroyMode settings
# 销毁临时变量
    scoreboard players reset temp.extraDifficulty settings
    scoreboard players reset temp.difficulty settings
    scoreboard players reset temp.storyMode settings
