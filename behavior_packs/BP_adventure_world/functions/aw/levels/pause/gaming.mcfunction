# ===== 暂停时时间线 =====

# --- 等待选择时的时间线 ---
# （0 <= time.temp.pauseTimeline < 100）
execute if score temp.pauseTimeline time matches 0..99 run function aw/levels/pause/timelines/waiting

# --- 玩家选择继续试炼时的时间线 ---
# （100 <= time.temp.pauseTimeline < 200）
execute if score temp.pauseTimeline time matches 100..199 run function aw/levels/pause/timelines/continue

# --- 玩家选择退出试炼时的时间线 ---
# （200 <= time.temp.pauseTimeline < 300）
execute if score temp.pauseTimeline time matches 200..299 run function aw/levels/pause/timelines/quit
