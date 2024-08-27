# ===== 剧情模式时间线 =====

# --- 停止音乐 ---
execute @e[name=timeline,scores={time=1..939}] ~~~ execute @e[name=tick,scores={time=17}] ~~~ music stop

# --- 剧情结束后（第940刻） ---
execute @e[name=timeline,scores={time=940}] ~~~ function levels/village/stage_1/start
