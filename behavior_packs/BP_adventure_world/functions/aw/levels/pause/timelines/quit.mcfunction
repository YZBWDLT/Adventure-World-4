# ===== 暂停时时间线：选择了退出试炼后 =====

# --- 时间线流逝 ---
execute if score temp.pauseTimeline time matches 200..261 run scoreboard players add temp.pauseTimeline time 1

# --- 传送并禁止玩家行动 ---
execute if score temp.pauseTimeline time matches 240 run function aw/levels/pause/events/quit

# --- 传送完毕后，撤销暂停状态 ---
execute if score temp.pauseTimeline time matches 261 run function aw/levels/pause/complete
