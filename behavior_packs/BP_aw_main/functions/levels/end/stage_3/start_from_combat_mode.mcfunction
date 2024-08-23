# ===== 从战斗模式进入 =====

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
function lib/get_data/achievements

## 显示统计数据
function lib/get_data/difficulty
function lib/get_data/get_best_time
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ function lib/get_data/get_score
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @a ~~~ function lib/get_data/stats_singleplayer
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a ~~~ function lib/get_data/stats_multiplayer

# --- 通用函数 ---
function levels/end/stage_3/start

# --- 生成作者实体 ---
function levels/end/stage_3/npc_author

# ========== 与剧情模式产生不同的地方的分割线 ==========

# --- 直接传送玩家回来 ---
tp @a -27 6 -48

# --- 生成张宇 ---
kill @e[type=aw:npc]
summon aw:npc -21 3 42 "as_zhangyu" "张宇"

# --- 播放音乐 ---
function lib/music_player

# --- 提示玩家 ---
tellraw @a {"rawtext":[{"translate":"§a祝贺你通关本地图！\n这是剧情模式下的\"你的家\"，你可以在楼下查看成就和统计数据。\n对面是张宇商店，对他进行交互可以开启下一场试炼。"}]}

# --- 清除物品 ---
clear @a
effect @a clear
