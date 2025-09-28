# ===== 显示模式 =====

# --- 清除旧有的展示实体 ---
    event entity @e[type=aw:text_display,x=-13,y=0,z=87,dy=10] aw:remove_immediately
# --- 显示标题 ---
    summon aw:text_display "§a§l更改模式" -13 1.4 87
# --- 显示各难度描述 ---
    ## 纯战斗模式
        execute if score temp.storyMode settings matches 0 run summon aw:text_display "§6纯战斗模式" -13 1.1 87
        execute if score temp.storyMode settings matches 0 run summon aw:text_display "§7* 跳过大多数剧情，保留同样的战斗体验" -13 3.3 87
        execute if score temp.storyMode settings matches 0 run summon aw:text_display "§7* 流程快，适合多人或速通玩家体验" -13 3.0 87
        execute if score temp.storyMode settings matches 0 run summon aw:text_display "§7* 无剧透风险，不涉及和正传有关的剧情" -13 2.7 87
    ## 剧情模式
        execute if score temp.storyMode settings matches 1 run summon aw:text_display "§b剧情模式" -13 1.1 87
        execute if score temp.storyMode settings matches 1 run summon aw:text_display "§7* 承接前作剧情，除战斗外也有较长剧情流程" -13 3.3 87
        execute if score temp.storyMode settings matches 1 run summon aw:text_display "§7* 适合单人体验，适合玩过前作的玩家体验" -13 3.0 87
        execute if score temp.storyMode settings matches 1 run summon aw:text_display "§c* 当心剧透！有意玩前作正传的玩家谨慎选择" -13 2.7 87
