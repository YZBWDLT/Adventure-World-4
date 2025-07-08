# ===== 玩家离开林乐的家楼下时 =====

# 更改状态变量
    scoreboard players set temp.hasPlayerInHomeDown data 0

# 移除楼下的文本展示实体
    event entity @e[type=aw:text_display,x=-31,y=0,z=-52,dx=8,dy=4,dz=8] aw:remove_immediately
