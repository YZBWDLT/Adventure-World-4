# ===== 从阶段4进入 =====

# --- 通用函数 ---
function levels/end/stage_3/start

# --- 传送张宇和玩家回来 ---
tp @e[name="张宇"] -21 3 42
tp @a -22 3 38

# --- 播放音乐 ---
function lib/music_player

# --- 执行退出stage_4的命令 ---
function levels/end/stage_4/on_exit
