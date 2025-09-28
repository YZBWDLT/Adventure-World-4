# ===== 出神入化 =====
# （单人）获得 S 级评价

# 基本描述
summon aw:text_display "§d[单人][困难] §l出神入化" -27 3.3 -45
summon aw:text_display "§a获得S级评价" -27 2.1 -45
summon aw:text_display "§73/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.singlePlayer.getSGrade record matches 0 run clone -87 5 -3 -87 5 -3 -27 3 -45
execute if score achievement.singlePlayer.getSGrade record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.singlePlayer.getSGrade record matches 1 run clone -87 4 -3 -87 4 -3 -27 3 -45
execute if score achievement.singlePlayer.getSGrade record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
