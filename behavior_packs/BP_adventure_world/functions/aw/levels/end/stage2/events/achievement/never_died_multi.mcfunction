# ===== 人多力量大 =====
# （多人）不团灭通过剑之试炼

### 基本描述
summon aw:text_display "§b[多人] §l人多力量大" -27 3.3 -45
summon aw:text_display "§a不团灭通过剑之试炼" -27 2.1 -45
summon aw:text_display "§77/24" -27 1.8 -45
### 成就未完成时显示的内容
execute if score achievement.multiPlayer.neverDied record matches 0 run clone -86 2 -3 -86 2 -3 -27 3 -45
execute if score achievement.multiPlayer.neverDied record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
### 成就已完成时显示的内容
execute if score achievement.multiPlayer.neverDied record matches 1 run clone -86 1 -3 -86 1 -3 -27 3 -45
execute if score achievement.multiPlayer.neverDied record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
