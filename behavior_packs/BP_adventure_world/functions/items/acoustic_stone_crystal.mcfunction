# ===== 触发关卡对话 =====

# --- 变量处理 ---
# 仅当满足以下条件的时候：
# · 当前处于 NPC 可交互状态
# · 当前正处于试炼状态
# · 当前不处于游戏状态
# 将 NPC 可交互状态改为 0，以标记为正在与 NPC 交互（正在使用传声石结晶对话）
execute unless score levelCompleted data matches 0 if score chapter data matches 1..9 if score allowNpcInteraction data matches 1 run scoreboard players set allowNpcInteraction data 0
