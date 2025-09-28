# ===== 神剑的恩惠 =====
# （单人）通过剑之试炼

# 基本描述
summon aw:text_display "§b[单人] §l神剑的恩惠" -27 3.3 -45
summon aw:text_display "§a通过剑之试炼" -27 2.1 -45
summon aw:text_display "§71/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.singlePlayer.finishMap record matches 0 run clone -85 5 -3 -85 5 -3 -27 3 -45
execute if score achievement.singlePlayer.finishMap record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.singlePlayer.finishMap record matches 1 run clone -85 4 -3 -85 4 -3 -27 3 -45
execute if score achievement.singlePlayer.finishMap record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
