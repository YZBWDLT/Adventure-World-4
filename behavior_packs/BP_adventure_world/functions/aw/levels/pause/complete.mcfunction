# ===== 退出暂停状态 =====

# 设置为未暂停状态
    scoreboard players set pausing data 0

# 移除临时变量
    scoreboard players reset temp.pauseTimeline time
    scoreboard players reset temp.quitPlayerAmount data

# 重新播放音乐
    function aw/lib/events/play_music
