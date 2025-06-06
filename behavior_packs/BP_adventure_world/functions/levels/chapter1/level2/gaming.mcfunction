# ===== 关卡游戏时时间线 =====
# 1-2

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function levels/chapter1/level2/complete

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function levels/chapter1/level2/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
execute as @a[tag=spectator,scores={deathState=0}] at @s unless entity @s[x=-132.0,y=6.0,z=52.0,dx=12,dy=5,dz=12] run function lib/modify_data/out_of_border
