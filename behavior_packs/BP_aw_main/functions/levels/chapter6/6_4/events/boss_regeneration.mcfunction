# ===== 时间线 =====
# Boss 生命恢复的时间线

# --- 倒计时 ---

scoreboard players remove chapter6.regeneration time 1

# --- 施加状态效果 ---

execute if score chapter6.regeneration time matches 0 run effect @e[type=aw:blaze_king] instant_health 1 2 true

# --- 超出倒计时限制时，重新设置时长 ---

execute if score chapter6.regeneration time matches ..0 run scoreboard players set chapter6.regeneration time 3
