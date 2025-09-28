# ===== 太亢奋了 =====
# 在 1 分钟内秒掉烈焰之魂

# 基本描述
summon aw:text_display "§b§l太亢奋了" -27 3.3 -45
summon aw:text_display "§a在1分钟内秒掉烈焰之魂" -27 2.1 -45
summon aw:text_display "§716/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.killBossRapidly record matches 0 run clone -95 5 -3 -95 5 -3 -27 3 -45
execute if score achievement.killBossRapidly record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.killBossRapidly record matches 1 run clone -95 4 -3 -95 4 -3 -27 3 -45
execute if score achievement.killBossRapidly record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
