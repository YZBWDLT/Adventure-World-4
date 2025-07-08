# ===== 按下按钮：更改模式 =====

# --- 变量设置 ---
    ## 添加额外地图难度，并控制在 -3~3 之间
        scoreboard players add temp.storyMode settings 1
        execute if score temp.storyMode settings matches !0..1 run scoreboard players set temp.storyMode settings 0
# --- 设置文本展示实体 ---
    ## 清除旧有的展示实体
        event entity @e[type=aw:text_display,x=-20,y=1,z=86,dy=5] aw:remove_immediately
        event entity @e[type=aw:text_display,x=-18,y=0,z=87,dy=5] aw:remove_immediately
    ## 显示各难度描述
        ### 纯战斗模式
            execute if score temp.storyMode settings matches 0 run summon aw:text_display "§6纯战斗模式" -18 1.1 87
            execute if score temp.storyMode settings matches 0 run summon aw:text_display "§7* 跳过大多数剧情，保留同样的战斗体验" -20 2.3 86
            execute if score temp.storyMode settings matches 0 run summon aw:text_display "§7* 流程快，适合多人或速通玩家体验" -20 2.0 86
            execute if score temp.storyMode settings matches 0 run summon aw:text_display "§7* 无剧透风险，不涉及和正传有关的剧情" -20 1.7 86
        ### 剧情模式
            execute if score temp.storyMode settings matches 1 run summon aw:text_display "§b剧情模式" -18 1.1 87
            execute if score temp.storyMode settings matches 1 run summon aw:text_display "§7* 承接前作剧情，除战斗外也有较长剧情流程" -20 2.3 86
            execute if score temp.storyMode settings matches 1 run summon aw:text_display "§7* 适合单人体验，适合玩过前作的玩家体验" -20 2.0 86
            execute if score temp.storyMode settings matches 1 run summon aw:text_display "§c* 当心剧透！有意玩前作正传的玩家谨慎选择" -20 1.7 86

# --- 恢复按钮 ---
    setblock -18 2 86 polished_blackstone_button ["facing_direction"=2,"button_pressed_bit"=false]
