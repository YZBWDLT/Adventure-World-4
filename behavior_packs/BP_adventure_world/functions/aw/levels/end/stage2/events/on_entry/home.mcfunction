# ===== 玩家进入林乐的家时 =====

# 更改状态变量
    scoreboard players set temp.hasPlayerInHome data 1

# 移除门口的文本展示实体
    event entity @e[type=aw:text_display,x=-27,y=2,z=-39,r=1.5] aw:remove_immediately
