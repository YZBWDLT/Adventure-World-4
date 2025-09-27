# ===== 发射烟花 =====

# --- 发射器计数 | 重置发射器 ---
scoreboard players add temp.currentDispenser data 1
execute if score temp.currentDispenser data matches 7.. run function aw/levels/end/stage2/events/reset_dispenser
execute if score temp.currentDispenser data matches 7.. run scoreboard players set temp.currentDispenser data 1

# --- 放置红石块 ---
execute if score temp.currentDispenser data matches 1 run setblock -36 -1 -46 redstone_block
execute if score temp.currentDispenser data matches 2 run setblock -34 -1 -40 redstone_block
execute if score temp.currentDispenser data matches 3 run setblock -30 -1 -36 redstone_block
execute if score temp.currentDispenser data matches 4 run setblock -24 -1 -36 redstone_block
execute if score temp.currentDispenser data matches 5 run setblock -19 -1 -40 redstone_block
execute if score temp.currentDispenser data matches 6 run setblock -17 0 -47 redstone_block

# --- 清除红石块 ---
execute if score temp.currentDispenser data matches 2 run setblock -36 -1 -46 air
execute if score temp.currentDispenser data matches 3 run setblock -34 -1 -40 air
execute if score temp.currentDispenser data matches 4 run setblock -30 -1 -36 air
execute if score temp.currentDispenser data matches 5 run setblock -24 -1 -36 air
execute if score temp.currentDispenser data matches 6 run setblock -19 -1 -40 air
execute if score temp.currentDispenser data matches 1 run setblock -17 0 -47 air
