# ===== 时间线 =====

# --- [100]给予玩家失明 ---
execute @e[name=timeline,scores={time=100}] ~~~ effect @a blindness 30 0 true

# --- [220]进入到下一阶段 ---
execute @e[name=timeline,scores={time=220}] ~~~ function levels/chapter7/7_0/start

