# ===== 开始关卡 =====

# --- 关卡 ID ---
scoreboard players set chapter data 1
scoreboard players set level data 0

# --- 调用通用函数 ---
# 重置标题时间、供应物品、播放音效和音乐、启用时间线、剧情模式触发对话
## 调用前先清除玩家的物品（仅限1-0的初始化，后续的X-0不再清除物品）
clear @a
function lib/modify_data/levels/start_chapter

# --- 标题 ---
titleraw @a title {"rawtext":[{"text":"§e§l沙 漠 神 殿"}]}
titleraw @a subtitle {"rawtext":[{"text":"§c1-0"}]}

# --- 先行封闭各关卡出口 ---
# 1-1出口
fill -118 1 32 -116 3 32 sandstone ["sand_stone_type"="cut"]
fill -117 2 32 -117 2 32 sandstone ["sand_stone_type"="heiroglyphs"]
# 1-3出口
fill -121 18 25 -121 20 27 red_sandstone ["sand_stone_type"="cut"]
fill -121 19 26 -121 19 26 red_sandstone ["sand_stone_type"="heiroglyphs"]

# --- 纯战斗模式下直接触发完成函数 ---
execute if score storyMode settings matches 0 run function levels/chapter1/level0/completed

# --- 1-0 的初始化 ---

## 传送玩家
tp @a -117 1 -6
## thisLevel标记
execute positioned -117 1 -6 run function lib/modify_data/markers/init
