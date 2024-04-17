# ===== 剧情模式开始 =====
# 执行于上周目完成

# --- 重置数据 ---
function lib/init/data_init
time set 6000
kill @e[family=text_display]

# --- 调用剧情模式的函数 ---
function levels/open/story_mode/start

# --- 使用上周目的值 ---
scoreboard players operation @e[name=difficultyAdder] data = nextGame.difficultyAdder record
scoreboard players operation @e[name=storyMode] data = nextGame.storyMode record
