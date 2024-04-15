# ===== 使用传声石结晶 =====

# --- 触发关卡对话 ---
# 当玩家在使用此物品时，如果满足以下条件则将对话状态改为1：
# · 当前不处于对话状态
# · 当前正处于试炼状态
# · 当前不处于游戏状态

scoreboard players operation @s temp = @e[name=dialogue] active
scoreboard players operation @s temp2 = @e[name=level] data

execute @s[scores={temp=0,temp2=100..999,isAlive=2}] ~~~ function lib/states/dialogue/enable
