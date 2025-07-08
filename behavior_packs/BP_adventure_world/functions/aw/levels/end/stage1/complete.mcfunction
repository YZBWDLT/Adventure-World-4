# ===== 完成关卡 =====
# 10-1 | 林乐回归

# 设置重生点
    spawnpoint @a -27 7 -48
# 调用通用函数
    function aw/lib/modify_data/levels/complete_open
# 标记一次完成地图
    function aw/lib/modify_data/complete_map
# 开启 stage2
    ## 调用启动函数
        function aw/levels/end/stage2/start
    ## 设置启用 stage2 的主线剧情
        scoreboard players set timeline active 2
