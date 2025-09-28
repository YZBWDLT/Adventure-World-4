# ===== 出师未捷身先死 =====
# 死于 1-1

# 基本描述
summon aw:text_display "§b§l出师未捷身先死" -27 3.3 -45
summon aw:text_display "§a死于1-1" -27 2.1 -45
summon aw:text_display "§718/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.failAtFirst record matches 0 run clone -90 2 -3 -90 2 -3 -27 3 -45
execute if score achievement.failAtFirst record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.failAtFirst record matches 1 run clone -90 1 -3 -90 1 -3 -27 3 -45
execute if score achievement.failAtFirst record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
