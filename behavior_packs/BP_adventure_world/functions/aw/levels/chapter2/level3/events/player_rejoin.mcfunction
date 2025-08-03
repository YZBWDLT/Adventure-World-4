# ===== 玩家退出重进 =====
# 2-3

# --- 通用 ---

## 传送玩家到重生点处
tp @s -143 -20 61

# --- 完成关卡前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -72 1 69
## 设置玩家为旁观模式 | 仅限多人模式下运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run tellraw @s {"rawtext":[{"translate":"§e检测到您重新进入游戏，已将您调整为旁观者。在下一波开始后，您便可以参与游戏。"}]}
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run tag @s add spectator
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run gamemode spectator @s

# --- 完成关卡后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -143 -20 61
