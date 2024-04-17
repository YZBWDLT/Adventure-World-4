# ===== 剧情模式开始 =====

# --- 设置游戏ID ---
scoreboard players set @e[name=level] data 2

# --- 设置剧情模式为1 ---
scoreboard players set @e[name=storyMode] data 1

# --- 设定通用的开始函数 ---
function levels/open/start
