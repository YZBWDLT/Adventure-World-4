# ===== 触发关卡对话 =====

# --- 变量处理 ---
# 仅当满足以下条件的时候才执行【调用对应对话】模块：
# · 当前处于 NPC 可交互状态
# · 当前正处于试炼状态
# · 当前不处于游戏状态
scoreboard players set temp.breakFlag data 1
execute unless score levelCompleted data matches 0 if score chapter data matches 1..9 if score allowNpcInteraction data matches 1 run scoreboard players set temp.breakFlag data 0

# --- 调用对应对话 ---
execute if score temp.breakFlag data matches 0 run function levels/chapter1/level0/events/crystal_dialogue

# --- 程序结束 ---
## 移除临时变量
scoreboard players reset temp.breakFlag data
