# ===== 关卡游戏时时间线 =====
# 开幕

# --- 在玩家选择模式之前 ---
execute if score timeline active matches 1 run function levels/open/before_stage/timelines/before_choice

# --- 玩家选择了剧情模式 ---
execute if score timeline active matches 2 run function levels/open/before_stage/timelines/story_mode
