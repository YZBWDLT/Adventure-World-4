# ===== 玩家退出重进 =====
# 7-1

# --- 通用 ---

## 传送玩家到重生点处
tp @s -119 -16 103
## 设置玩家的重生点
spawnpoint @s -119 -16 103

# --- 完成关卡前 ---

## 设置玩家为旁观模式 | 仅限多人模式下运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run tellraw @s {"rawtext":[{"translate":"§e检测到您重新进入游戏，已将您调整为旁观者。在下一波开始后，您便可以参与游戏。"}]}
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run tag @s add spectator
