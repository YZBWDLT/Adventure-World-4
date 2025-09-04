# ===== 关卡游戏时时间线 =====
# 7-3

# --- 检查怪物是否全部清除 ---
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function aw/levels/chapter7/level3/waves/wave_2
## 第 2 波 -> 第 3 波
execute unless entity @e[type=aw:spawner] if score wave data matches 2 if score monsterAmount data matches 0 run function aw/levels/chapter7/level3/waves/wave_3
## 第 3 波 -> 第 4 波
execute unless entity @e[type=aw:spawner] if score wave data matches 3 if score monsterAmount data matches 0 run function aw/levels/chapter7/level3/waves/wave_4
## 第 4 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 4 if score monsterAmount data matches 0 run function aw/levels/chapter7/level3/complete

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter7/level3/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
# 在该关卡上方80格的位置存在与该房间同样大小的屏障外壳，只要眼部检查到上方80格为屏障就立刻判定为出界
execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -194 -17 97 run function aw/lib/events/player_out_of_border
# 阻止部分因网络波动的玩家意外在上一关以冒险模式重生（#110，见https://github.com/YZBWDLT/Adventure-World-4/issues/110）
# 无论何种情况，玩家实际上在上一关的位置都是不符合预期的
execute as @a positioned -161 -17 110 if entity @s[r=2] run tp @s -194 -17 97
