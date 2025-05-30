# ===== 重进玩家执行的命令 =====
# 当玩家重新进入游戏后，执行的命令

# 调用此方法时：
# · 执行者为重进玩家
# · 执行位置为重进玩家
# 输出结果：
# ——

# --- 更新玩家数据 ---
scoreboard players add @s deathCount 0
scoreboard players add @s killCount 0

# --- 重新获取人数 ---
function lib/get_data/player_amount

# --- 如果该局尚未结束，则…… ---

## 如果玩家人数为 1 人，则 pass

## 如果玩家人数大于等于 2 人，则将玩家在本局设为旁观者和旁观模式
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run tellraw @s {"rawtext":[{"translate":"§e检测到您重新进入游戏，已将您调整为旁观者。在下一波开始后，您便可以参与游戏。"}]}
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run gamemode spectator @s
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run tag @s add spectator

# --- 传送玩家到本关的重生点上 ---
tp @s @e[has_property={aw:marker_type="level",aw:level="this"},c=1]

# --- 重新播放音乐 ---
tellraw @a[scores={isOnline=!0}] {"rawtext":[{"translate":"§7检测到有玩家进入游戏，为确保游戏体验，将重新播放场景音乐"}]}
function lib/modify_data/play_music

# --- 更正游戏规则与游戏模式 ---
# 仅中国版，仅1人时执行，以适应中国版电脑版的要求
function lib/get_data/client
execute if score client data matches 1 if score playerAmount data matches 0 run function lib/modify_data/init/gamerule
execute if score client data matches 1 if score playerAmount data matches 0 run gamemode adventure @s
execute if score client data matches 1 if score playerAmount data matches 0 run weather clear
