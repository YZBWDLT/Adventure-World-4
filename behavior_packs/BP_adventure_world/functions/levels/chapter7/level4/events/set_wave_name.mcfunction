# ===== 打印本关的波潮信息 =====
# 由lib/get_data/wave_name.mcfunction执行。具体含义请见该函数。

execute if score wave data matches 1 run summon aw:name_marker ~~~~~ aw:wave_name "§b⚃§e⚀§e⚁§e⚀§e⚀"
execute if score wave data matches 2 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§b⚂§e⚁§e⚀§e⚀"
execute if score wave data matches 3 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚄§b⚃§e⚀§e⚀"
execute if score wave data matches 4 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚄§a⚅§b⚂§e⚀"
execute if score wave data matches 5 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚄§a⚅§a⚄§b⚂"
scoreboard players set temp.breakFlag data 1
