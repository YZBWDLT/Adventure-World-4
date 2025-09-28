# ===== 势如破竹 =====
# （多人）在45分钟内通过试炼

### 基本描述
summon aw:text_display "§b[多人] §l势如破竹" -27 3.3 -45
summon aw:text_display "§a在45分钟内通过试炼" -27 2.1 -45
summon aw:text_display "§710/24" -27 1.8 -45
### 成就未完成时显示的内容
execute if score achievement.multiPlayer.speedrun record matches 0 run clone -89 2 -3 -89 2 -3 -27 3 -45
execute if score achievement.multiPlayer.speedrun record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
### 成就已完成时显示的内容
execute if score achievement.multiPlayer.speedrun record matches 1 run clone -89 1 -3 -89 1 -3 -27 3 -45
execute if score achievement.multiPlayer.speedrun record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
