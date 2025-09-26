# ===== 全身而退 =====
# 不受伤通过 2-3

# 基本描述
summon aw:text_display "§d[困难] §l全身而退" -27 3.3 -45
summon aw:text_display "§a不受伤通过2-3" -27 2.1 -45
summon aw:text_display "§712/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.noHurt1 record matches 0 run clone -91 5 -3 -91 5 -3 -27 3 -45
execute if score achievement.noHurt1 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.noHurt1 record matches 1 run clone -91 4 -3 -91 4 -3 -27 3 -45
execute if score achievement.noHurt1 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
