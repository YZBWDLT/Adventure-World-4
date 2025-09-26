# ===== 别挡道，我很急！ =====
# （单人）在45分钟内通过试炼

### 基本描述
summon aw:text_display "§b[单人] §l别挡道，我很急！" -27 3.3 -45
summon aw:text_display "§a在45分钟内通过试炼" -27 2.1 -45
summon aw:text_display "§74/24" -27 1.8 -45
### 成就未完成时显示的内容
execute if score achievement.singlePlayer.speedrun record matches 0 run clone -88 5 -3 -88 5 -3 -27 3 -45
execute if score achievement.singlePlayer.speedrun record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
### 成就已完成时显示的内容
execute if score achievement.singlePlayer.speedrun record matches 1 run clone -88 4 -3 -88 4 -3 -27 3 -45
execute if score achievement.singlePlayer.speedrun record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
