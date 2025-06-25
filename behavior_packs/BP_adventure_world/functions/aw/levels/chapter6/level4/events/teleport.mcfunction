# ===== 随机传送 =====

scoreboard players remove temp.teleportCountdown time 1
execute if score temp.teleportCountdown time matches ..0 if score monsterAmount data matches ..9 run function aw/levels/chapter6/level4/events/start_teleport
