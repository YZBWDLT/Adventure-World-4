# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
function lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
execute positioned -83 1 -2 run function lib/modify_data/levels/wave_3

# --- 生成怪物生成器 ---

## 蜘蛛
summon aw:spawner -78 -5 65 0 0 aw:spawn_spider_1
summon aw:spawner -89 -7 64 0 0 aw:spawn_spider_1
## 骷髅
summon aw:spawner -95 -12 75 0 0 aw:spawn_skeleton_2
## 僵尸
summon aw:spawner -87 -17 68 0 0 aw:spawn_zombie_2
## 苦力怕
summon aw:spawner -74 -12 64 0 0 aw:spawn_creeper_normal
summon aw:spawner -98 -3 63 0 0 aw:spawn_creeper_normal

# --- 提示玩家药水的补充机制 ---
tellraw @a {"rawtext":[{"translate":"§a与药水每关供应不同，箭会在每波开始前供应。"}]}