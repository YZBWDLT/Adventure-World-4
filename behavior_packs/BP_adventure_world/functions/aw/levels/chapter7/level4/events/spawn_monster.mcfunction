# ===== 烈焰王生成怪物 =====

# --- 倒计时 ---
scoreboard players remove temp.nextMonster time 1

# --- 倒计时结束后生成怪物 ---
execute if score temp.nextMonster time matches ..0 as @e[type=aw:blaze_king] at @s run summon aw:spawner ~~-1~-1 0 0 aw:spawn_skeleton_sword_1
execute if score temp.nextMonster time matches ..0 as @e[type=aw:blaze_king] at @s run summon aw:spawner ~~-1~1 0 0 aw:spawn_skeleton_sword_1

# --- 重置倒计时 ---
# 当 Boss 血量剩余 1/3 以上时每 3-7 秒尝试生成，剩余 1/3 以下时每 3-5 秒尝试生成
execute if score temp.nextMonster time matches ..0 if score @e[type=aw:blaze_king,c=1] health >= temp.bossHealthOneThird data run scoreboard players random temp.nextMonster time 3 10
execute if score temp.nextMonster time matches ..0 if score @e[type=aw:blaze_king,c=1] health < temp.bossHealthOneThird data run scoreboard players random temp.nextMonster time 3 5
