# ===== 关卡游戏时时间线 =====
# 2-3

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function aw/levels/chapter2/level3/waves/wave_2
## 第 2 波 -> 第 3 波
execute unless entity @e[type=aw:spawner] if score wave data matches 2 if score monsterAmount data matches 0 run function aw/levels/chapter2/level3/waves/wave_3
## 第 3 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 3 if score monsterAmount data matches 0 run function aw/levels/chapter2/level3/complete

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter2/level3/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
# 因本关区域判定过于复杂，因此在该关卡上方80格的位置放置了一个与房间同样大小的屏障外壳，只要眼部或者脚部碰到屏障就立刻判定为出界
execute as @a[tag=spectator,scores={deathState=0}] at @s if block ~~80~ barrier positioned -143 -20 61 run function aw/lib/modify_data/out_of_border
execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -143 -20 61 run function aw/lib/modify_data/out_of_border