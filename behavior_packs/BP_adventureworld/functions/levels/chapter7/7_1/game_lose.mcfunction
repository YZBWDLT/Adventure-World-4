# ===== 游戏失败 =====

# --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -120 -17 105
tp @e[family=respawner] -120 -17 105

# --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose

# --- 重新开始调用动画 ---
function levels/chapter7/7_1/before_gaming/start
