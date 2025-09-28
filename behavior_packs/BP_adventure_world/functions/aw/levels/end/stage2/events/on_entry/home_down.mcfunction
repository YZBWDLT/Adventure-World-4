# ===== 玩家进入林乐的家楼下时 =====

# 隐藏外部 NPC 和展示文本 | 仅限单人模式下执行
    execute if score playerAmount data matches 1 run effect @e[type=aw:npc] invisibility 3600 0 true
    execute if score playerAmount data matches 1 run effect @e[type=aw:text_display] invisibility 3600 0 true

# 更改状态变量
    scoreboard players set temp.hasPlayerInHomeDown data 1

# 展示文本展示实体
    summon aw:text_display "§a§l← §r§a上一个" -25 1 -45
    summon aw:text_display "§a下一个 §l→" -29 1 -45

    summon aw:text_display "§a查看统计数据" -26 1 -51
    summon aw:text_display "§a查看评分细则" -28 1 -51

    summon aw:text_display "§b米云溪的" -27 1.0 -44.9
    summon aw:text_display "§b翻译手稿" -27 0.75 -44.9

    execute if score achievement record matches 0..11 run summon aw:text_display "§7加油完成更多成就吧！" -27 3 -52
    execute if score achievement record matches 12..23 run summon aw:text_display "§f加油！你已经完成一半成就了！" -27 3 -52
    execute if score achievement record matches 24 run summon aw:text_display "§e恭喜！你已完成了所有成就！" -27 3 -52

    function aw/levels/end/stage2/events/show_achievement
