# ===== 击杀判定 =====
# 当玩家击杀了family = monster的生物后，自动执行此命令

scoreboard players add @s killAmount 1
event entity @s reset_kill_test
