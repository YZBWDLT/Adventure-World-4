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

# --- 禁止使用御风珠和箭 ---
kill @e[type=aw:wind_pearl]
kill @e[type=arrow]

# --- 阻止玩家死亡 ---
execute if score tick time matches 15 run effect @a resistance 5 5 true
