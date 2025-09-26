# ===== 显示成就 =====

# 移除原有的文本展示实体
    event entity @e[type=aw:text_display,x=-27,y=1.5,z=-45,dy=5] aw:remove_immediately

# 页数
    ## 第 1 页：[单人] 神剑的恩惠
    execute if score temp.achievementPage data matches 1 run function aw/levels/end/stage2/events/achievement/finish_map
    ## 第 2 页：[单人] 让田英睡觉去吧！
    execute if score temp.achievementPage data matches 2 run function aw/levels/end/stage2/events/achievement/never_died
    ## 第 3 页：[单人] 出神入化
    execute if score temp.achievementPage data matches 3 run function aw/levels/end/stage2/events/achievement/get_s_grade
    ## 第 4 页：[单人] 别挡道，我很急！
    execute if score temp.achievementPage data matches 4 run function aw/levels/end/stage2/events/achievement/speedrun
    ## 第 5 页：[单人] 狙击手的对决
    execute if score temp.achievementPage data matches 5 run function aw/levels/end/stage2/events/achievement/sniper_duel
    ## 第 6 页：[多人] 齐心协力
    execute if score temp.achievementPage data matches 6 run function aw/levels/end/stage2/events/achievement/finish_map_multi
    ## 第 7 页：[多人] 人多力量大
    execute if score temp.achievementPage data matches 7 run function aw/levels/end/stage2/events/achievement/never_died_multi
    ## 第 8 页：[多人] 躺赢
    execute if score temp.achievementPage data matches 8 run function aw/levels/end/stage2/events/achievement/kill_less_than_50
    ## 第 9 页：[多人] 挑战极限
    execute if score temp.achievementPage data matches 9 run function aw/levels/end/stage2/events/achievement/difficulty_4
    ## 第 10 页：[多人] 势如破竹
    execute if score temp.achievementPage data matches 10 run function aw/levels/end/stage2/events/achievement/speedrun_multi
    ## 第 11 页：别问，问就是陷阱
    execute if score temp.achievementPage data matches 11 run function aw/levels/end/stage2/events/achievement/no_trap
    ## 第 12 页：全身而退
    execute if score temp.achievementPage data matches 12 run function aw/levels/end/stage2/events/achievement/no_hurt_1
    ## 第 13 页：全身而退 II
    execute if score temp.achievementPage data matches 13 run function aw/levels/end/stage2/events/achievement/no_hurt_2
    ## 第 14 页：身轻如燕
    execute if score temp.achievementPage data matches 14 run function aw/levels/end/stage2/events/achievement/no_leather_boots
    ## 第 15 页：我以为挂机池呢
    execute if score temp.achievementPage data matches 15 run function aw/levels/end/stage2/events/achievement/no_monster_killed
    ## 第 16 页：太亢奋了
    execute if score temp.achievementPage data matches 16 run function aw/levels/end/stage2/events/achievement/kill_boss_rapidly
    ## 第 17 页：闪避点满
    execute if score temp.achievementPage data matches 17 run function aw/levels/end/stage2/events/achievement/not_fired
    ## 第 18 页：出师未捷身先死
    execute if score temp.achievementPage data matches 18 run function aw/levels/end/stage2/events/achievement/fail_at_first
    ## 第 19 页：让开，这里归我了！
    execute if score temp.achievementPage data matches 19 run function aw/levels/end/stage2/events/achievement/lay_in_coffin
    ## 第 20 页：骷髅王的宝藏
    execute if score temp.achievementPage data matches 20 run function aw/levels/end/stage2/events/achievement/get_treasure
    ## 第 21 页：躲这里不错
    execute if score temp.achievementPage data matches 21 run function aw/levels/end/stage2/events/achievement/find_button_1
    ## 第 22 页：上房揭瓦
    execute if score temp.achievementPage data matches 22 run function aw/levels/end/stage2/events/achievement/find_button_2
    ## 第 23 页：耐砸王
    execute if score temp.achievementPage data matches 23 run function aw/levels/end/stage2/events/achievement/explode_3_times
    ## 第 24 页：还是跑酷大佬
    execute if score temp.achievementPage data matches 24 run function aw/levels/end/stage2/events/achievement/parkour
