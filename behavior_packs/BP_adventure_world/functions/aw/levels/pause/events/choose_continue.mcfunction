# ===== 继续试炼 =====

# 将玩家的相机黑屏并阻止玩家移动
    camera @a fade time 1 2 1
    inputpermission set @a movement disabled
    inputpermission set @a camera disabled

# 移除文本展示实体
    event entity @e[type=aw:text_display] aw:remove_immediately

# 多人时，提醒谁选择了继续试炼
    execute if score playerAmount data matches 2.. run tellraw @a {"rawtext":[{"translate":"§a%%s 选择了继续试炼","with":{"rawtext":[{"selector":"@s"}]}}]}

# 设置时间线
    scoreboard players set temp.pauseTimeline time 100
