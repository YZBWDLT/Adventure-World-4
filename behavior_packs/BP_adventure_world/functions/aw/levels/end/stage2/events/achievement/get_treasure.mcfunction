# ===== 骷髅王的宝藏 =====
# ......那真是宝藏吗？

# 基本描述
summon aw:text_display "§e[隐藏] §l骷髅王的宝藏" -27 3.3 -45
summon aw:text_display "§a......那真是宝藏吗？" -27 2.1 -45
summon aw:text_display "§720/24" -27 1.8 -45
# 成就未完成时显示的内容
execute if score achievement.getTreasure record matches 0 run clone -92 2 -3 -92 2 -3 -27 3 -45
execute if score achievement.getTreasure record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
# 成就已完成时显示的内容
execute if score achievement.getTreasure record matches 1 run clone -92 1 -3 -92 1 -3 -27 3 -45
execute if score achievement.getTreasure record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
