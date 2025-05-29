# ===== 打印本关的波潮信息 =====
# 由lib/get_data/wave_name.mcfunction执行。具体含义请见该函数。

execute if score wave data matches 1 run summon aw:name_marker ~~~~~ aw:wave_name "§b⚃§e⚀"
execute if score wave data matches 2 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§b⚂"
scoreboard players set temp.breakFlag data 1
