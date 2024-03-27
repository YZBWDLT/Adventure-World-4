# ===== 时间线 =====

# --- 在第2波开始时提示弓的第一个特性 ---
execute @e[name=wave,scores={data=2}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"§a试试用弓箭射杀骷髅吧，有奇效哦！"}]}

# --- 在第3波开始时提示弓的第二个特性 ---
execute @e[name=wave,scores={data=3}] ~~~ execute @e[name=monsterSummonDelay,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"§a与药水每关供应不同，箭会在每波开始前供应。"}]}
