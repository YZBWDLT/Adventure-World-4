# ===== 躺赢 =====
# （多人）有玩家的击杀数小于 50

### 基本描述
summon aw:text_display "§b[多人] §l躺赢" -27 3.3 -45
summon aw:text_display "§a有玩家的击杀数小于50" -27 2.1 -45
summon aw:text_display "§78/24" -27 1.8 -45
### 成就未完成时显示的内容
execute if score achievement.multiPlayer.killLessThan50 record matches 0 run clone -87 2 -3 -87 2 -3 -27 3 -45
execute if score achievement.multiPlayer.killLessThan50 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
### 成就已完成时显示的内容
execute if score achievement.multiPlayer.killLessThan50 record matches 1 run clone -87 1 -3 -87 1 -3 -27 3 -45
execute if score achievement.multiPlayer.killLessThan50 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
