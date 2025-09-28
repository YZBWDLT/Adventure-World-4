# ===== 耐砸王 =====
# 在 7-5 被火球砸 3 回，三回啊三回！

# 基本描述
summon aw:text_display "§d[困难] §l耐砸王" -27 3.3 -45
summon aw:text_display "§a在7-5被火球砸3回，三回啊三回！" -27 2.1 -45
summon aw:text_display "§723/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.explode3Times record matches 0 run clone -95 2 -3 -95 2 -3 -27 3 -45
execute if score achievement.explode3Times record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.explode3Times record matches 1 run clone -95 1 -3 -95 1 -3 -27 3 -45
execute if score achievement.explode3Times record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
