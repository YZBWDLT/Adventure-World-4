# ===== 玩家离开林乐的家楼下时 =====

# 更改状态变量
    scoreboard players set temp.hasPlayerInHomeDown data 0

# 移除楼下的文本展示实体
    event entity @e[type=aw:text_display,x=-31,y=0,z=-52,dx=8,dy=4,dz=8] aw:remove_immediately

# 重显示外部 NPC 和展示文本 | 仅限单人模式下执行
    effect @e[type=aw:npc] invisibility 0 1 true
    effect @e[type=aw:text_display] invisibility 0 1 true
