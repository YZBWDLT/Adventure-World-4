# ===== 关卡游戏时时间线 =====
# 7-1

# --- 检查怪物是否全部清除 ---
## 关卡完成倒计时
execute if score levelCompleteCountdown time matches 1.. if score monsterAmount data matches 0 run scoreboard players remove levelCompleteCountdown time 1
execute if score levelCompleteCountdown time matches 1.. unless score monsterAmount data matches 0 run scoreboard players set levelCompleteCountdown time 60
## 第 1 波 -> 第 2 波
execute unless entity @e[type=aw:spawner] if score wave data matches 1 if score monsterAmount data matches 0 run function aw/levels/chapter7/level1/waves/wave_2
## 第 2 波 -> 第 3 波
execute unless entity @e[type=aw:spawner] if score wave data matches 2 if score monsterAmount data matches 0 run function aw/levels/chapter7/level1/waves/wave_3
## 第 3 波 -> 关卡完成
execute unless entity @e[type=aw:spawner] if score wave data matches 3 if score monsterAmount data matches 0 if score levelCompleteCountdown time matches ..0 run function aw/levels/chapter7/level1/complete

# --- 重命名岩浆怪 ---
function aw/lib/modify_data/rename_magma_cube

# --- 检查存活玩家数目 ---
# 如果存活玩家数目为 0，则触发关卡失败函数
execute if score alivePlayerAmount data matches 0 run function aw/levels/chapter7/level1/fail

# --- 阻止旁观模式的玩家出界 ---
# 不处理正处于死亡状态的玩家
# 在该关卡上方80格的位置存在与该房间同样大小的屏障外壳，只要眼部检查到上方80格为屏障就立刻判定为出界
execute as @a[tag=spectator,scores={deathState=0}] at @s anchored eyes if block ~~80~ barrier positioned -119 -16 103 run function aw/lib/modify_data/out_of_border
#（无需指定上一关重生点，因本关开头已设定了重生点） execute as @a[tag=spectator,scores={deathState=0}] positioned -87 -39 96 if entity @s[r=2] run tp @s -119 -16 103
