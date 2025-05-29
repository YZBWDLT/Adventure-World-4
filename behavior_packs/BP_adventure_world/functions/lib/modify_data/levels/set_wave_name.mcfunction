# ===== 打印波潮信息 =====
# 由lib/get_data/wave_name.mcfunction执行。具体含义请见该函数。

## 最大波潮为 1 波时
execute if score maxWave data matches 1 if score wave data matches 1 run summon aw:name_marker ~~~~~ aw:wave_name "§b⚃"

## 最大波潮为 2 波时
execute if score maxWave data matches 2 if score wave data matches 1 run summon aw:name_marker ~~~~~ aw:wave_name "§b⚃§e⚁"
execute if score maxWave data matches 2 if score wave data matches 2 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§b⚃"

## 最大波潮为 3 波时
execute if score maxWave data matches 3 if score wave data matches 1 run summon aw:name_marker ~~~~~ aw:wave_name "§b⚃§e⚁§e⚁"
execute if score maxWave data matches 3 if score wave data matches 2 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§b⚃§e⚁"
execute if score maxWave data matches 3 if score wave data matches 3 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚅§b⚃"

## 最大波潮为 4 波时
execute if score maxWave data matches 4 if score wave data matches 1 run summon aw:name_marker ~~~~~ aw:wave_name "§b⚃§e⚁§e⚁§e⚁"
execute if score maxWave data matches 4 if score wave data matches 2 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§b⚃§e⚁§e⚁"
execute if score maxWave data matches 4 if score wave data matches 3 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚅§b⚃§e⚁"
execute if score maxWave data matches 4 if score wave data matches 4 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚅§a⚅§b⚃"

## 最大波潮为 5 波时
execute if score maxWave data matches 5 if score wave data matches 1 run summon aw:name_marker ~~~~~ aw:wave_name "§b⚃§e⚁§e⚁§e⚁§e⚁"
execute if score maxWave data matches 5 if score wave data matches 2 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§b⚃§e⚁§e⚁§e⚁"
execute if score maxWave data matches 5 if score wave data matches 3 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚅§b⚃§e⚁§e⚁"
execute if score maxWave data matches 5 if score wave data matches 4 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚅§a⚅§b⚃§e⚁"
execute if score maxWave data matches 5 if score wave data matches 5 run summon aw:name_marker ~~~~~ aw:wave_name "§a⚅§a⚅§a⚅§a⚅§b⚃"
