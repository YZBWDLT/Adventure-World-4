# ===== 二阶段初始化 =====

# --- 重置时间线的值 ---
scoreboard players set @e[name=timeline] active 4
scoreboard players set @e[name=timeline] time 0

# --- 摄像机震动 ---
camerashake add @a[scores={isAlive=1}] 1 2 rotational

# --- 加载地形 ---

# --- 召唤4个火球 ---
summon aw:fireball -232 -45 37
summon aw:fireball -232 -45 51
summon aw:fireball -217 -45 51
summon aw:fireball -219 -45 36

# --- 提醒玩家 ---
execute @a ~~~ playsound smithing_table.use @s
function lib/title
titleraw @a subtitle {"rawtext":[{"translate":"§c唤魔法师已被激怒！"}]}
