# ===== 回血 =====

scoreboard players remove temp.healBossCountdown time 1
execute if score temp.healBossCountdown time matches ..0 run effect @e[type=aw:blaze_king] instant_health 1 2 true
execute if score temp.healBossCountdown time matches ..0 run scoreboard players set temp.healBossCountdown time 3
