# ===== 两种模式游戏开始的通用函数 =====

# --- 调整游戏模式 ---
gamemode adventure @a

# --- 清除信标 ---
fill 43 25 86 45 25 86 air [] replace beacon

# --- 清除悬浮文本 ---
kill @e[type=aw:text_display]

# --- 重新设定出生点 ---
setworldspawn 36 26 87

# --- 传送玩家 ---
tp @a 36 26 87
tp @e[family=respawner] 36 26 87

# --- 游戏开幕 ---
function lib/states/timeline/enable
function lib/states/dialogue/enable

# --- 初始化标题时间 ---
title @a times 10 30 10
