# ===== 玩家进入林乐的家楼上时 =====

# 更改状态变量
    scoreboard players set temp.hasPlayerInHomeUp data 1

# 展示文本展示实体
    summon aw:text_display "§b查看米云溪翻译手稿、" -24 7.0 -48
    summon aw:text_display "§b成就和统计数据" -24 6.7 -48
    summon aw:text_display "§f§l↓ ↓ ↓" -24 6.4 -48

    function aw/levels/end/stage2/events/show_credits
