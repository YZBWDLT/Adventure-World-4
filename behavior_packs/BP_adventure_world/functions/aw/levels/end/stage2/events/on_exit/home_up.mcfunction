# ===== 玩家离开林乐的家楼上时 =====

# 更改状态变量
    scoreboard players set temp.hasPlayerInHomeUp data 0

# 移除楼上的文本展示实体
    event entity @e[type=aw:text_display,x=-31,y=6,z=-52,dx=8,dy=3,dz=8] aw:remove_immediately
