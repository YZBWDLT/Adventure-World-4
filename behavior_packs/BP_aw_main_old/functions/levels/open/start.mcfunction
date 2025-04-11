# ===== 两种模式游戏开始的通用函数 =====

# --- 调整游戏模式 ---
gamemode adventure @a

# --- 清除信标 ---
fill 43 25 86 45 25 86 air [] replace beacon

# --- 清除悬浮文本 ---
kill @e[type=aw:text_display]

# --- 传送玩家 ---
function lib/black_screen/teleport_respawner

# --- 游戏开幕 ---
function lib/states/timeline/enable
function lib/states/dialogue/enable

# --- 初始化标题时间 ---
title @a times 10 30 10

# --- 提示玩家打开音乐 ---
tellraw @a {"rawtext":[{"translate":"§7为保证游戏体验，请将§b设置 - 音频 - 音乐§7调至§b100§7"}]}

# --- 清除玩家物品 ---
clear @a
function lib/init/gamerule

# --- 清除作者实体 ---
kill @e[type=aw:npc]
