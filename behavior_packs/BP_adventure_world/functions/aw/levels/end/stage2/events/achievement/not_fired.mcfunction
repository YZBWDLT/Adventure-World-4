# ===== 闪避点满 =====
# 不踩到火、不掉进岩浆通过 7-5

# 基本描述
summon aw:text_display "§b§l闪避点满" -27 3.3 -45
summon aw:text_display "§a不踩到火、不掉进岩浆通过7-5" -27 2.1 -45
summon aw:text_display "§717/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.notFired record matches 0 run clone -96 5 -3 -96 5 -3 -27 3 -45
execute if score achievement.notFired record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.notFired record matches 1 run clone -96 4 -3 -96 4 -3 -27 3 -45
execute if score achievement.notFired record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
