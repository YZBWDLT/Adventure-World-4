# ===== 身轻如燕 =====
# 不穿皮革靴子通过 4-3

# 基本描述
summon aw:text_display "§b§l身轻如燕" -27 3.3 -45
summon aw:text_display "§a不穿皮革靴子通过4-3" -27 2.1 -45
summon aw:text_display "§714/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.noLeatherBoots record matches 0 run clone -93 5 -3 -93 5 -3 -27 3 -45
execute if score achievement.noLeatherBoots record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.noLeatherBoots record matches 1 run clone -93 4 -3 -93 4 -3 -27 3 -45
execute if score achievement.noLeatherBoots record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
