# ===== 开始关卡 =====
# 6-0 | 山峦神殿

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set chapter data 6
scoreboard players set level data 0

# --- 玩家处理 ---

## 播放标题 | 应先于[调用通用函数]模块
titleraw @a title {"rawtext":[{"translate":"§7§l山 峦 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -81 -31 -28

# --- 调用通用函数 ---
function aw/lib/events/levels/start_chapter

# --- 生成各关的门 ---
## 6-1
summon aw:door -76 -31 -46 0 0 aw:set_mountain_door
summon aw:door -82 -31 -63 90 0 aw:set_mountain_door
## 6-2
summon aw:door -80 -19 -50 0 0 aw:set_mountain_door
summon aw:door -71 -19 -30 0 0 aw:set_mountain_door
## 6-3
summon aw:door -75 -37 -17 0 0 aw:set_mountain_door
summon aw:door -75 -39 8 0 0 aw:set_mountain_door
## 6-4
summon aw:door -75 -39 20 0 0 aw:set_mountain_door
## 额外生成封堵 6-3 的黑曜石
fill -74 -32 -23 -77 -32 -22 obsidian keep

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§7山峦神殿"

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:mountain_temple gameFog
