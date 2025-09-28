# ===== 让开，这里归我了！ =====
# 趴在棺材里......？

# 基本描述
summon aw:text_display "§e[隐藏] §l让开，这里归我了！" -27 3.3 -45
summon aw:text_display "§a趴在棺材里......？" -27 2.1 -45
summon aw:text_display "§719/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.layInCoffin record matches 0 run clone -91 2 -3 -91 2 -3 -27 3 -45
execute if score achievement.layInCoffin record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.layInCoffin record matches 1 run clone -91 1 -3 -91 1 -3 -27 3 -45
execute if score achievement.layInCoffin record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
