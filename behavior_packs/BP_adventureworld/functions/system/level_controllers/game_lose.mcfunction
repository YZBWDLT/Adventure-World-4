# ===== 关卡失败检测器 =====
# 该检测器将检测关卡失败条件

# --- 检测玩家数目 ---
function lib/get_data/player_amount

# --- 当不存在存活玩家时，触发关卡失败函数 ---
execute @e[name=alivePlayersAmount,scores={data=0}] ~~~ function levels/game_lose_functions