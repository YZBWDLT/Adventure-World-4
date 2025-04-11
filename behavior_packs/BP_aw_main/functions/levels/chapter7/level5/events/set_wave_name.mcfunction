# ===== 打印本关的波潮信息 =====

execute if score wave data matches 1 run summon aw:wave_name "§b⚃§e⚀"
execute if score wave data matches 2 run summon aw:wave_name "§a⚅§b⚂"
scoreboard players set temp.breakFlag data 1
