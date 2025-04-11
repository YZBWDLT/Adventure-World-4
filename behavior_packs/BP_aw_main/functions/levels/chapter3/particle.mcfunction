# --- 第三章粒子 ---
# 每 5 秒执行一次

scoreboard players set temp.const5 data 5
scoreboard players operation temp.currSec data = playedSecond time
scoreboard players operation temp.currSec data %= temp.const5 data

execute if score temp.currSec data matches 0 run particle aw:bubble_bottom -176 -24 24
execute if score temp.currSec data matches 0 run particle aw:bubble_top -173 5 23

scoreboard players reset temp.currSec data
scoreboard players reset temp.const5 data
