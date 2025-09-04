# ===== 玩家退出重进 =====
# 3-1

# --- 通用 ---

## 传送玩家到重生点处 | 仅限多人模式下运行
execute if score playerAmount data matches 2.. run tp @s -188 -20 29

# --- 完成关卡前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -173 -20 30
## 设置玩家为旁观模式 | 仅限多人模式下运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run tellraw @s {"rawtext":[{"translate":"§e检测到您重新进入游戏，已将您调整为旁观者。在下一波开始后，您便可以参与游戏。"}]}
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run tag @s add spectator
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run gamemode spectator @s

# --- 完成关卡后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -188 -20 29
## [1] 镜头给到米云溪
execute if score levelCompleted data matches 1 if score timeline time matches 1 run camera @s set minecraft:free pos -14 10 118 facing -17 2 103
## [220] 镜头缓慢逼近剑之神殿
execute if score levelCompleted data matches 1 if score timeline time matches 220 run camera @s set minecraft:free pos -15.0 2 78 rot 0 0
## [540] 镜头给到玩家
execute if score levelCompleted data matches 1 if score timeline time matches 540 run camera @s set minecraft:free pos -181 -16 31 facing @s
