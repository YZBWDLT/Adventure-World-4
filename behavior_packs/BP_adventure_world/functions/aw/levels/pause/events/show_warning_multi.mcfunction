# ===== 多人模式下的警告 =====

event entity @e[type=aw:text_display] aw:remove_immediately
summon aw:text_display "§c§l离开试炼吗？" -95 -13.0 -11
summon aw:text_display "§c警告！你们的进度将不会保存。" -95 -13.50 -11
summon aw:text_display "走到对应选项处以作出选择" -95 -13.75 -11
summon aw:text_display "如果有玩家滥用§f§l退出试炼§r§f，在聊天栏使用命令" -95 -14.25 -11
summon aw:text_display "§b/tag (玩家名) add cannotQuit§f以剥夺其退出权利" -95 -14.50 -11
summon aw:text_display "§a§l继续试炼" -99.0 -13 -17.0
summon aw:text_display "§7仅需1名玩家选择继续方可继续" -99.0 -13.25 -17.0
summon aw:text_display "§c§l退出试炼" -89.0 -13 -17.0
summon aw:text_display "§7需所有玩家选择退出后方可退出" -89.0 -13.25 -17.0
