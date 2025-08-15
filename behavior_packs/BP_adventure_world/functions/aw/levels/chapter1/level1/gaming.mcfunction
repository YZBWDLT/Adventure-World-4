# ===== 关卡游戏时时间线 =====

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function aw/levels/chapter1/level1/complete

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter1/level1/fail

# --- 阻止旁观模式的玩家出界 ---
# 在该关卡上方80格的位置存在与该房间同样大小的屏障外壳，只要眼部检查到上方80格为屏障就立刻判定为出界
execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -117 2 16 run function aw/lib/events/player_out_of_border
execute as @a[tag=spectator,scores={deathState=0}] positioned -117 1 -6 if entity @s[r=2] run tp @s -117 2 16
