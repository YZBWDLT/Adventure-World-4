# ===== 我以为挂机池呢 =====
# 不击杀任何怪物通过 4-4

# 基本描述
summon aw:text_display "§b§l我以为挂机池呢" -27 3.3 -45
summon aw:text_display "§a不击杀任何怪物通过4-4" -27 2.1 -45
summon aw:text_display "§715/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.noMonsterKilled record matches 0 run clone -94 5 -3 -94 5 -3 -27 3 -45
execute if score achievement.noMonsterKilled record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.noMonsterKilled record matches 1 run clone -94 4 -3 -94 4 -3 -27 3 -45
execute if score achievement.noMonsterKilled record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
