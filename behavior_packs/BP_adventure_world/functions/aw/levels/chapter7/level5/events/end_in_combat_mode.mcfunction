# ===== 纯战斗模式下，直接跳转到结束剧情的 stage2 =====

# 标记一次完成地图
    function aw/lib/modify_data/complete_map
# 开启 stage2
    ## 调用启动函数
        scoreboard players set chapter data 10
        function aw/levels/end/stage2/start
    ## 关闭对话状态
        function aw/lib/modify_data/stop_dialogue
    ## 设置不启用 stage2 的主线剧情
        scoreboard players set timeline active 1
    ## 进行一部分由 stage1 进行的初始化操作
        ### 传送玩家回来
            tp @a -27 6 -48
        ### 设置重生点
            spawnpoint @a -27 7 -48
        ### 生成张宇
            event entity @e[type=aw:npc,has_property={aw:is_author=false}] aw:remove_immediately
            summon aw:npc -21 3 42 facing @p aw:npc_zhangyu "张宇"
        ### 播放音乐
            function aw/lib/modify_data/play_music
        ### 提示玩家已通关
            tellraw @a {"rawtext":[{"translate":"§a祝贺你通关本地图！\n这是剧情模式下的\"你的家\"，你可以在楼下查看成就和统计数据。\n对面是张宇商店，对他进行交互可以开启下一场试炼。"}]}
        ### 清除物品
            clear @a
            effect @a clear
