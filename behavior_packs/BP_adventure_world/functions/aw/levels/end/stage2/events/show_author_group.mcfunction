# ===== 显示作者组 =====

# 测试组
    event entity @e[type=aw:text_display,x=-21.0,y=4,z=-16,r=1] aw:remove_immediately
    summon aw:text_display "§a§l=== 测试组 ===" -21.0 3.5 -16
    summon aw:text_display "§7和他们聊天，看看他们的留言~" -21.0 3.25 -16
# 主作者组
    event entity @e[type=aw:text_display,x=-31,y=3,z=-34,r=1] aw:remove_immediately
    summon aw:text_display "§a§l=== 主作者组 ===" -31 3.5 -34.0
    summon aw:text_display "§7和他们聊天，看看他们的留言~" -31 3.25 -34.0
# 建筑 & 资源包组
    event entity @e[type=aw:text_display,x=-31,y=3,z=-28,r=1] aw:remove_immediately
    summon aw:text_display "§a§l=== 建筑 & 资源包组 ===" -31 3.5 -28.0
    summon aw:text_display "§7和他们聊天，看看他们的留言~" -31 3.25 -28.0
# 剧情组
    event entity @e[type=aw:text_display,x=-10,y=4,z=-32,r=1] aw:remove_immediately
    summon aw:text_display "§a§l=== 剧情组 ===" -10 4.50 -32
    summon aw:text_display "§7和他们聊天，看看他们的留言~" -10 4.25 -32
