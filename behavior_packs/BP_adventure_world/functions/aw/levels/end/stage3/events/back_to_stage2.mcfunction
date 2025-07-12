# ===== 返回到 stage2 =====

## 移除原有的文本展示实体
    event entity @e[type=aw:text_display] aw:remove_immediately
## 回到 stage2
    ## 触发函数
        function aw/levels/end/stage2/start
    ## 将时间线状态改为 1
        scoreboard players set timeline active 1
    ## 将张宇和玩家带回来
        event entity @e[type=aw:npc,has_property={aw:is_author=false,aw:npc_type=6}] aw:remove_immediately
        summon aw:npc -21 3 42 facing @p aw:npc_zhangyu "张宇"
        tp @a -22 3 38
    ## 播放音乐
        function aw/lib/modify_data/play_music
# 移除stage4的按钮
    fill -13 2 86 -18 1 87 air
# 结束对话状态
    function aw/lib/modify_data/stop_dialogue
# 销毁临时变量
    scoreboard players reset temp.difficulty settings
    scoreboard players reset temp.extraDifficulty settings
    scoreboard players reset temp.storyMode settings
