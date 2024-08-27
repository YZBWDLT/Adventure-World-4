# ===== 召唤生物 =====
# 此函数由「烈焰之魂」的实体文件执行，每秒执行 1 次。
# 执行时，此实体的血量应为其总血量的 2/3 或更低。

# --- 倒计时 ---
scoreboard players remove blazeKing.summonMonsterCountdown time 1

#<!> --- 适配旧版的命令 ---
scoreboard players operation monsterAmount data = @e[name=monsterAmount] data

# --- 生成怪物 ---
# 若怪物总数超过10个，则停止生成

execute if score blazeKing.summonMonsterCountdown time matches ..0 if score monsterAmount data matches ..9 run function entities/blaze_king/summon_monsters_2
