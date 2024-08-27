# ===== 时间线 =====
# 召唤生物的时间线

# --- 倒计时 ---
scoreboard players remove blazeKing.summonMonsterCountdown time 1

# --- 生成怪物 ---
# 若怪物总数超过10个，则停止生成

execute if score blazeKing.summonMonsterCountdown time matches ..0 if score monsterAmount data matches ..9 run function levels/chapter6/6_4/events/summon_monsters_2
