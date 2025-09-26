# ===== 狙击手的对决 =====
# （单人）射杀 60 只以上的骷髅或流浪者通过试炼

### 基本描述
summon aw:text_display "§d[单人][困难] §l狙击手的对决" -27 3.3 -45
summon aw:text_display "§a射杀60只以上的骷髅或流浪者通过试炼" -27 2.1 -45
summon aw:text_display "§75/24" -27 1.8 -45
### 成就未完成时显示的内容
execute if score achievement.singlePlayer.sniperDuel record matches 0 run clone -89 5 -3 -89 5 -3 -27 3 -45
execute if score achievement.singlePlayer.sniperDuel record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
### 成就已完成时显示的内容
execute if score achievement.singlePlayer.sniperDuel record matches 1 run clone -89 4 -3 -89 4 -3 -27 3 -45
execute if score achievement.singlePlayer.sniperDuel record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
