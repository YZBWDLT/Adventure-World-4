# ===== 显示难度 =====

# --- 计算将改为的实际难度 ---
    ## 获取基准难度
        execute if score playerAmount data matches 1 run scoreboard players set temp.difficulty settings 1
        execute if score playerAmount data matches 2..3 run scoreboard players set temp.difficulty settings 2
        execute if score playerAmount data matches 4..6 run scoreboard players set temp.difficulty settings 3
        execute if score playerAmount data matches 7.. run scoreboard players set temp.difficulty settings 4
    ## 将额外游戏难度计算进去
        scoreboard players operation temp.difficulty settings += temp.extraDifficulty settings
    ## 排除异常数值，确保settings.temp.difficulty在1~4范围内
        execute if score temp.difficulty settings matches ..0 run scoreboard players set temp.difficulty settings 1
        execute if score temp.difficulty settings matches 5.. run scoreboard players set temp.difficulty settings 4
# --- 清除旧有的展示实体 ---
    event entity @e[type=aw:text_display,x=-11,y=1,z=86,dy=5] aw:remove_immediately
    event entity @e[type=aw:text_display,x=-13,y=0,z=87,dy=5] aw:remove_immediately
# --- 显示标题 ---
    summon aw:text_display "§a§l更改难度" -13 1.4 87
# --- 显示额外难度 ---
    execute if score temp.extraDifficulty settings matches -3 run summon aw:text_display "额外难度 | §b-3" -13 0.8 87
    execute if score temp.extraDifficulty settings matches -2 run summon aw:text_display "额外难度 | §b-2" -13 0.8 87
    execute if score temp.extraDifficulty settings matches -1 run summon aw:text_display "额外难度 | §a-1" -13 0.8 87
    execute if score temp.extraDifficulty settings matches 0 run summon aw:text_display "额外难度 | §a0" -13 0.8 87
    execute if score temp.extraDifficulty settings matches 1 run summon aw:text_display "额外难度 | §e1" -13 0.8 87
    execute if score temp.extraDifficulty settings matches 2 run summon aw:text_display "额外难度 | §c2" -13 0.8 87
    execute if score temp.extraDifficulty settings matches 3 run summon aw:text_display "额外难度 | §43" -13 0.8 87
# --- 显示各难度描述 ---
    ### 难度 1
        execute if score temp.difficulty settings matches 1 run summon aw:text_display "§a1 标准" -13 1.1 87
        execute if score temp.difficulty settings matches 1 run summon aw:text_display "§7* 适合单人游玩" -11 2.3 86
        execute if score temp.difficulty settings matches 1 run summon aw:text_display "§7* 正常的刷怪" -11 2.0 86
        execute if score temp.difficulty settings matches 1 run summon aw:text_display "§7* 正常的怪物强度" -11 1.7 86
    ### 难度 2
        execute if score temp.difficulty settings matches 2 run summon aw:text_display "§e2 困难" -13 1.1 87
        execute if score temp.difficulty settings matches 2 run summon aw:text_display "§7* 适合2~3人，或进阶玩家单人游玩" -11 2.3 86
        execute if score temp.difficulty settings matches 2 run summon aw:text_display "§7* 更强一级的刷怪" -11 2.0 86
        execute if score temp.difficulty settings matches 2 run summon aw:text_display "§7* 更高的怪物强度" -11 1.7 86
    ### 难度 3
        execute if score temp.difficulty settings matches 3 run summon aw:text_display "§c3 极限" -13 1.1 87
        execute if score temp.difficulty settings matches 3 run summon aw:text_display "§7* 适合4~6人，或资深玩家单人游玩" -11 2.3 86
        execute if score temp.difficulty settings matches 3 run summon aw:text_display "§7* 高等级，更多的怪物" -11 2.0 86
        execute if score temp.difficulty settings matches 3 run summon aw:text_display "§7* 非常高的怪物强度" -11 1.7 86
    ### 难度 4
        execute if score temp.difficulty settings matches 4 run summon aw:text_display "§44 地狱" -13 1.1 87
        execute if score temp.difficulty settings matches 4 run summon aw:text_display "§4* 适合7+人，或某些不要命的玩家单人游玩" -11 2.3 86
        execute if score temp.difficulty settings matches 4 run summon aw:text_display "§4* 海量高级怪物" -11 2.0 86
        execute if score temp.difficulty settings matches 4 run summon aw:text_display "§4* 逆天的怪物强度" -11 1.7 86
