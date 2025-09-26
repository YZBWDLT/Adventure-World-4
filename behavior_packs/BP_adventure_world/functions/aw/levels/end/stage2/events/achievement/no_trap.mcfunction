# ===== 别问，问就是陷阱 =====
# 不使用机关通过 2-2

# 基本描述
summon aw:text_display "§b§l别问，问就是陷阱" -27 3.3 -45
summon aw:text_display "§a不使用机关通过2-2" -27 2.1 -45
summon aw:text_display "§711/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.noTrap record matches 0 run clone -90 5 -3 -90 5 -3 -27 3 -45
execute if score achievement.noTrap record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.noTrap record matches 1 run clone -90 4 -3 -90 4 -3 -27 3 -45
execute if score achievement.noTrap record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
