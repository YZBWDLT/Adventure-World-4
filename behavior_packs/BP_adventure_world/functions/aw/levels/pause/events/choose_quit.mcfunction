# ===== 退出试炼 =====

# 将玩家的相机黑屏并阻止玩家移动
    camera @a fade time 1 2 1
    inputpermission set @a movement disabled
    inputpermission set @a camera disabled

# 移除文本展示实体
    event entity @e[type=aw:text_display] aw:remove_immediately

# 设置时间线
    scoreboard players set temp.pauseTimeline time 200
