# ===== 剧情模式开始 =====

# --- 设置游戏ID ---
scoreboard players set @e[name=level] data 2

# --- 设置剧情模式为1 ---
scoreboard players set @e[name=storyMode] settings 1

# --- 设定通用的开始函数 ---
function levels/open/start

# --- 设置常加载区域 ---
tickingarea add -55 0 -55 60 0 120 "villageArea"
