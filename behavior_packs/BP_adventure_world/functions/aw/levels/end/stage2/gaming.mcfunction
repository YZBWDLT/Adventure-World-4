# ===== 关卡游戏时时间线 =====
# 10-2 | 进行最终结算

# --- 剧情 ---
    ## 等待中 | active.timeline = 1
    ## 主线剧情 | active.timeline = 2
        execute if score timeline active matches 2 run function aw/levels/end/stage2/timelines/main_dialogue
    ## 张宇剧情 | active.timeline = 3
        execute if score timeline active matches 3 run function aw/levels/end/stage2/timelines/zhangyu_dialogue
    ## YZBWDLT | active.timeline = 4
        execute if score timeline active matches 4 run function aw/levels/end/stage2/timelines/dialogue/yzbwdlt
    ## Andy7343 | active.timeline = 5
        execute if score timeline active matches 5 run function aw/levels/end/stage2/timelines/dialogue/andy7343
    ## GreeLeaf | active.timeline = 6
        execute if score timeline active matches 6 run function aw/levels/end/stage2/timelines/dialogue/greeleaf
    ## KrisWenYu | active.timeline = 7
        execute if score timeline active matches 7 run function aw/levels/end/stage2/timelines/dialogue/kriswenyu
    ## PigeonKI | active.timeline = 8
        execute if score timeline active matches 8 run function aw/levels/end/stage2/timelines/dialogue/pigeonki
    ## xiaoshu512 | active.timeline = 9
        execute if score timeline active matches 9 run function aw/levels/end/stage2/timelines/dialogue/xiaoshu512
    ## KianaKasnala947 | active.timeline = 10
        execute if score timeline active matches 10 run function aw/levels/end/stage2/timelines/dialogue/kianakasnala947
    ## freeorange114 | active.timeline = 11
        execute if score timeline active matches 11 run function aw/levels/end/stage2/timelines/dialogue/freeorange114
# --- 林乐家 ---
    ## 若有玩家在林乐家，且上一刻无玩家在林乐家时，触发玩家进入林乐家事件
        execute if entity @a[x=-31,y=1,z=-52,dx=8,dy=8,dz=8] if score temp.hasPlayerInHome data matches 0 run function aw/levels/end/stage2/events/on_entry/home
    ## 若无玩家在林乐家，且上一刻有玩家在林乐家时，触发玩家离开林乐家事件
        execute unless entity @a[x=-31,y=1,z=-52,dx=8,dy=8,dz=8] if score temp.hasPlayerInHome data matches 1 run function aw/levels/end/stage2/events/on_exit/home
    ## 若有玩家在林乐家楼上，且上一刻无玩家在林乐家楼上时，触发玩家进入林乐家楼上事件
        execute if entity @a[x=-31,y=6,z=-52,dx=8,dy=3,dz=8] if score temp.hasPlayerInHomeUp data matches 0 run function aw/levels/end/stage2/events/on_entry/home_up
    ## 若无玩家在林乐家楼上，且上一刻有玩家在林乐家楼上时，触发玩家离开林乐家楼上事件
        execute unless entity @a[x=-31,y=6,z=-52,dx=8,dy=3,dz=8] if score temp.hasPlayerInHomeUp data matches 1 run function aw/levels/end/stage2/events/on_exit/home_up
    ## 若有玩家在林乐家楼下，且上一刻无玩家在林乐家楼下时，触发玩家进入林乐家楼下事件
        execute if entity @a[x=-31,y=1,z=-52,dx=8,dy=3,dz=8] if score temp.hasPlayerInHomeDown data matches 0 run function aw/levels/end/stage2/events/on_entry/home_down
    ## 若无玩家在林乐家楼下，且上一刻有玩家在林乐家楼下时，触发玩家离开林乐家楼下事件
        execute unless entity @a[x=-31,y=1,z=-52,dx=8,dy=3,dz=8] if score temp.hasPlayerInHomeDown data matches 1 run function aw/levels/end/stage2/events/on_exit/home_down

    ## 若玩家按下了楼上的制作人名单按钮，则翻页并显示制作人名单
        execute if block -25 7 -51 birch_button ["facing_direction"=1,"button_pressed_bit"=true] run function aw/levels/end/stage2/events/button_push/credits
    ## 若玩家按下了楼下的制作人名单按钮，则翻页并显示成就
        ### 上一页
            execute if block -25 2 -45 birch_button ["facing_direction"=2,"button_pressed_bit"=true] run function aw/levels/end/stage2/events/button_push/prev_achievement
        ### 下一页
            execute if block -29 2 -45 birch_button ["facing_direction"=2,"button_pressed_bit"=true] run function aw/levels/end/stage2/events/button_push/next_achievement
    ## 若玩家按下了楼下的统计数据按钮，则显示统计数据
        execute if block -26 2 -51 birch_button ["facing_direction"=1,"button_pressed_bit"=true] run function aw/levels/end/stage2/events/button_push/stats

# --- 张宇商店 ---
    ## 若有玩家在张宇商店，且上一刻无玩家在张宇商店时，触发玩家离开张宇商店事件
        execute if entity @a[x=-26,y=3,z=36,dx=16,dy=4,dz=8] if score temp.hasPlayerInShop data matches 0 run function aw/levels/end/stage2/events/on_entry/shop
    ## 若无玩家在张宇商店，且上一刻有玩家在张宇商店时，触发玩家离开张宇商店事件
        execute unless entity @a[x=-26,y=3,z=36,dx=16,dy=4,dz=8] if score temp.hasPlayerInShop data matches 1 run function aw/levels/end/stage2/events/on_exit/shop
