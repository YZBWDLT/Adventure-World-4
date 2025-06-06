# ===== 关卡游戏时时间线 =====
# 2-2

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function levels/chapter2/level2/waves/wave_2
## 第 2 波 -> 第 3 波
execute unless entity @e[type=aw:spawner] if score wave data matches 2 if score monsterAmount data matches 0 run function levels/chapter2/level2/waves/wave_3
## 第 3 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 3 if score monsterAmount data matches 0 run function levels/chapter2/level2/complete

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function levels/chapter2/level2/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
execute as @a[tag=spectator,scores={deathState=0}] at @s unless entity @s[x=-102.0,y=-16.0,z=58.0,dx=30,dy=23,dz=19] run function lib/modify_data/out_of_border
