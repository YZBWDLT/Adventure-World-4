# ===== 触发关卡对话 =====
# 当玩家在使用此物品时，如果满足以下条件则将对话状态改为1：
# · 当前不处于对话状态
# · 当前正处于试炼状态
# · 当前不处于游戏状态

execute unless score levelCompleted data matches 0 if score chapter data matches 1..9 if score timeline active matches !1 run function lib/states/dialogue/enable
