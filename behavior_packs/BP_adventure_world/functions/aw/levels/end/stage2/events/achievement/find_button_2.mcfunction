# ===== 上房揭瓦 =====
# 发现 7-2 的一个隐藏按钮

# 基本描述
summon aw:text_display "§e[隐藏] §l上房揭瓦" -27 3.3 -45
summon aw:text_display "§a发现7-2的一个隐藏按钮" -27 2.1 -45
summon aw:text_display "§722/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.findButton2 record matches 0 run clone -94 2 -3 -94 2 -3 -27 3 -45
execute if score achievement.findButton2 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.findButton2 record matches 1 run clone -94 1 -3 -94 1 -3 -27 3 -45
execute if score achievement.findButton2 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
