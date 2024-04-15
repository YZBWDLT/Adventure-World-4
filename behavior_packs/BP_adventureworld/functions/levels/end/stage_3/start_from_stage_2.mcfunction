# ===== 从上阶段进入 =====

# --- 结束标题 ---
titleraw @a times 20 100 20
titleraw @a title {"rawtext":[{"translate":"§l感 谢 您 的 游 玩 ！"}]}
titleraw @a subtitle {"rawtext":[{"translate":"Thanks for your playing!"}]}
execute @a ~~~ playsound random.levelup @s ~~~ 1 0.75

# --- 调整或获取数据 ---
## 地图完成次数 += 1
scoreboard players add mapCompletedTimes record 1

# --- 成就房间（主角家楼下） ---

## 获取成就
tellraw @a {"rawtext":[{"translate":"§l===== 成就获取 =====\n"}]}
function achievements/get/map_completed

## 显示统计数据
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @a ~~~ function lib/get_data/stats_singleplayer
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a ~~~ function lib/get_data/stats_multiplayer

# --- 通用函数 ---
function levels/end/stage_3/start

# ========== 与纯战斗模式产生不同的地方的分割线 ==========

# --- 触发对话 ---
function lib/states/dialogue/enable
function lib/states/timeline/enable_without_flowing
