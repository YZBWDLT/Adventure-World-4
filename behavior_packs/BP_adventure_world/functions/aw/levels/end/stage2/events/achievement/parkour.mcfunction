# ===== 还是跑酷大佬 =====
# 跑上时间神殿的最顶端

# 基本描述
summon aw:text_display "§e[隐藏] §l还是跑酷大佬" -27 3.3 -45
summon aw:text_display "§a跑上时间神殿的最顶端" -27 2.1 -45
summon aw:text_display "§724/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.parkour record matches 0 run clone -96 2 -3 -96 2 -3 -27 3 -45
execute if score achievement.parkour record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.parkour record matches 1 run clone -96 1 -3 -96 1 -3 -27 3 -45
execute if score achievement.parkour record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
