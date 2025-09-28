# ===== 显示关卡 =====

# --- 清除旧有的展示实体 ---
    event entity @e[type=aw:text_display,x=-19,y=0,z=86,dy=10] aw:remove_immediately
    event entity @e[type=aw:text_display,x=-18,y=0,z=87,dy=10] aw:remove_immediately
    event entity @e[type=aw:text_display,x=-20,y=0,z=85,dy=10] aw:remove_immediately
# --- 显示标题 ---
    summon aw:text_display "§a§l开始关卡" -19 1.4 86
    summon aw:text_display "§b上一关" -18 1.4 87
    summon aw:text_display "§b下一关" -20 1.4 85
    execute if score mapCompletedTimes record matches 0 run summon aw:text_display "§c无法在未完成一周目时调整！" -19 0.8 86
# --- 显示各关卡描述 ---
    ## 全关卡
        execute if score level settings matches 0 run summon aw:text_display "§6全流程" -19 1.1 86
        execute if score level settings matches 0 run summon aw:text_display "§7* 全流程从头开始关卡" -19 3.3 86
        execute if score level settings matches 0 run summon aw:text_display "§7* 可记录完成次数等游戏纪录" -19 3.0 86
        execute if score level settings matches 0 run summon aw:text_display "§7* 可中途退出游戏" -19 2.7 86
    ## 单关卡
        execute if score level settings matches !0 run summon aw:text_display "§7* 进行单关卡试炼，练习用" -19 3.3 86
        execute if score level settings matches !0 run summon aw:text_display "§7* 不记录游戏纪录，但可获取成就" -19 3.0 86
        execute if score level settings matches !0 run summon aw:text_display "§7* 不可中途退出游戏" -19 2.7 86
        ### 1-1
            execute if score level settings matches 1 run summon aw:text_display "§e1-1 | 沙漠神殿" -19 1.1 86
        ### 1-2
            execute if score level settings matches 2 run summon aw:text_display "§e1-2 | 沙漠神殿" -19 1.1 86
        ### 1-3
            execute if score level settings matches 3 run summon aw:text_display "§e1-3 | 沙漠神殿" -19 1.1 86
        ### 2-1
            execute if score level settings matches 4 run summon aw:text_display "§a2-1 | 丛林神殿" -19 1.1 86
        ### 2-2
            execute if score level settings matches 5 run summon aw:text_display "§a2-2 | 丛林神殿" -19 1.1 86
        ### 2-3
            execute if score level settings matches 6 run summon aw:text_display "§a2-3 | 丛林神殿 §c§lBOSS" -19 1.1 86
        ### 3-1
            execute if score level settings matches 7 run summon aw:text_display "§b3-1 | 湖泊神殿" -19 1.1 86
        ### 3-2
            execute if score level settings matches 8 run summon aw:text_display "§b3-2 | 湖泊神殿" -19 1.1 86
        ### 3-3
            execute if score level settings matches 9 run summon aw:text_display "§b3-3 | 湖泊神殿" -19 1.1 86
        ### 3-4
            execute if score level settings matches 10 run summon aw:text_display "§b3-4 | 湖泊神殿 §c§lBOSS" -19 1.1 86
        ### 4-1
            execute if score level settings matches 11 run summon aw:text_display "§94-1 | 寒冰神殿" -19 1.1 86
        ### 4-2
            execute if score level settings matches 12 run summon aw:text_display "§94-2 | 寒冰神殿" -19 1.1 86
        ### 4-3
            execute if score level settings matches 13 run summon aw:text_display "§94-3 | 寒冰神殿" -19 1.1 86
        ### 4-4
            execute if score level settings matches 14 run summon aw:text_display "§94-4 | 寒冰神殿 §c§lBOSS" -19 1.1 86
        ### 6-1
            execute if score level settings matches 15 run summon aw:text_display "§76-1 | 山峦神殿" -19 1.1 86
        ### 6-2
            execute if score level settings matches 16 run summon aw:text_display "§76-2 | 山峦神殿" -19 1.1 86
        ### 6-3
            execute if score level settings matches 17 run summon aw:text_display "§76-3 | 山峦神殿" -19 1.1 86
        ### 6-4
            execute if score level settings matches 18 run summon aw:text_display "§76-4 | 山峦神殿 §c§lBOSS" -19 1.1 86
        ### 7-1
            execute if score level settings matches 19 run summon aw:text_display "§c7-1 | 封印神殿" -19 1.1 86
        ### 7-2
            execute if score level settings matches 20 run summon aw:text_display "§c7-2 | 封印神殿" -19 1.1 86
        ### 7-3
            execute if score level settings matches 21 run summon aw:text_display "§c7-3 | 封印神殿" -19 1.1 86
        ### 7-4
            execute if score level settings matches 22 run summon aw:text_display "§c7-4 | 封印神殿" -19 1.1 86
        ### 7-5
            execute if score level settings matches 23 run summon aw:text_display "§c最终关 | 封印神殿 §c§lBOSS" -19 1.1 86
