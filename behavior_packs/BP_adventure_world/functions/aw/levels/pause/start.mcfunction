# ===== 暂停状态 =====

# 设置为暂停状态
    scoreboard players set pausing data 1

# 将玩家的相机黑屏并阻止玩家移动
    camera @a fade time 1 2 1
    inputpermission set @a movement disabled
    inputpermission set @a camera disabled

# 设置文本展示实体
    event entity @e[type=aw:text_display] aw:remove_immediately
    summon aw:text_display "§c§l离开试炼吗？" -95 -13.0 -11
    execute if score playerAmount data matches 1 run summon aw:text_display "§c警告！您的进度将不会保存。" -95 -13.50 -11
    execute if score playerAmount data matches 1 run summon aw:text_display "走到对应选项处以作出选择" -95 -13.75 -11
    
    execute if score playerAmount data matches 2.. run summon aw:text_display "§c警告！你们的进度将不会保存。" -95 -13.50 -11
    execute if score playerAmount data matches 2.. run summon aw:text_display "§f§l所有玩家§r§f走到对应选项处以作出选择" -95 -13.75 -11
    execute if score playerAmount data matches 2.. run summon aw:text_display "如果有玩家滥用§f§l退出试炼§r§f，在聊天栏使用命令" -95 -13.00 -11
    execute if score playerAmount data matches 2.. run summon aw:text_display "§b/tag (玩家名) add cannotQuit§f以剥夺其退出权利" -95 -12.75 -11

    summon aw:text_display "§a§l继续试炼" -99.0 -13 -17.0
    summon aw:text_display "§c§l退出试炼" -89.0 -13 -17.0

# 设置临时变量
    scoreboard players set temp.pauseTimeline time 0
    scoreboard players set temp.quitPlayerAmount data 0

# 重新播放音乐
    function aw/lib/events/play_music
