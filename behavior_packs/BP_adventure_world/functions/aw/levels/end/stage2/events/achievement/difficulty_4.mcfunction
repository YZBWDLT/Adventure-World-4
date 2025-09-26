# ===== 挑战极限 =====
# （多人）通过4级难度的试炼

### 基本描述
summon aw:text_display "§d[多人][困难] §l挑战极限" -27 3.3 -45
summon aw:text_display "§a通过4级或更高难度的试炼" -27 2.1 -45
summon aw:text_display "§79/24" -27 1.8 -45
### 成就未完成时显示的内容
execute if score achievement.multiPlayer.difficulty4 record matches 0 run clone -88 2 -3 -88 2 -3 -27 3 -45
execute if score achievement.multiPlayer.difficulty4 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
### 成就已完成时显示的内容
execute if score achievement.multiPlayer.difficulty4 record matches 1 run clone -88 1 -3 -88 1 -3 -27 3 -45
execute if score achievement.multiPlayer.difficulty4 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
