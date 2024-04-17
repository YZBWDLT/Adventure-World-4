# ===== 战斗模式开始 =====

# --- 设置游戏ID ---
scoreboard players set @e[name=level] data 99

# --- 设置剧情模式为0 ---
scoreboard players set @e[name=storyMode] data 0

# --- 设定通用的开始函数 ---
function levels/open/start

# --- 播放音乐 ---
function lib/music_player
