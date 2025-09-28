# ===== 暂停状态 =====

# 设置为暂停状态
    scoreboard players set pausing data 1

# 将玩家的相机黑屏并阻止玩家移动
    camera @a fade time 1 2 1
    inputpermission set @a movement disabled
    inputpermission set @a camera disabled

# 设置文本展示实体
    execute if score playerAmount data matches 1 run function aw/levels/pause/events/show_warning_single    
    execute if score playerAmount data matches 2.. run function aw/levels/pause/events/show_warning_multi    

# 设置临时变量
    scoreboard players set temp.pauseTimeline time 0
    scoreboard players set temp.quitPlayerAmount data 0

# 重新播放音乐
    function aw/lib/events/play_music
