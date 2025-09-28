# ===== 触发关卡对话 =====
# 当玩家使用传声石结晶后将触发该函数。

# --- 获取传声石结晶的交互类型 ---

## 常规状态（0）
scoreboard players set temp.acousticStoneDialogueType data 0
## 不可用状态（-1） | （1）未启用传声石结晶时；或（2）时间线被占用时；或（3）未处于试炼状态时；或（4）战斗状态时
execute if score allowAcousticStoneCrystal data matches 0 run scoreboard players set temp.acousticStoneDialogueType data -1
execute if score timeLapse data matches 1.. run scoreboard players set temp.acousticStoneDialogueType data -1
execute unless score chapter data matches 1..9 run scoreboard players set temp.acousticStoneDialogueType data -1
execute if score levelCompleted data matches 0 run scoreboard players set temp.acousticStoneDialogueType data -1

# --- 常规状态（0） ---

## 启用时间线
execute if score temp.acousticStoneDialogueType data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 移除临时变量 ---
scoreboard players reset temp.acousticStoneDialogueType data
