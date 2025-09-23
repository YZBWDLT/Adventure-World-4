# ===== 章节开始通用函数 =====
# 试炼中关卡通用的内容。用于在章节开始（X-0）时调用。
# 调用此方法时：无需修饰。

# --- 关卡参数 ---
    ## 设置关卡为未完成
        scoreboard players set levelCompleted data 0
    ## 设置为可恢复药水
        tag @a add supplyAllPotions
    ## 设置为可恢复箭
        tag @a add supplyArrow
    ## 启用时间线 | 将原来的时间值归零
        function aw/lib/modify_data/timeline/dont_keep_value
        function aw/lib/modify_data/timeline/enable

# --- 提示玩家 ---
    ## 重置标题时间并播放副标题的关卡号
        title @a times 0 100 0
        titleraw @a subtitle {"rawtext":[{"translate":"§c%%s-0","with":{"rawtext":[{"score":{"objective":"data","name":"chapter"}}]}}]}
    ## 音效
        function aw/lib/modify_data/sound/beacon_power_0_75
    ## 播放音乐 | 除第 5 章外
        execute unless score chapter data matches 5 run function aw/lib/events/play_music

# --- 剧情模式触发对话 ---
    execute if score storyMode settings matches 1 run function aw/lib/events/start_dialogue

# --- 清除多余实体 ---
    ## 移除残留的怪物
        kill @e[family=monster]
    ## 移除残留的生成器
        event entity @e[type=aw:spawner] aw:remove_immediately
    ## 移除正在掷出的御风珠，防止过剧情时出现问题
        kill @e[type=aw:wind_pearl]
    ## 移除残留的引导点
        event entity @e[type=aw:destination] aw:remove_immediately
