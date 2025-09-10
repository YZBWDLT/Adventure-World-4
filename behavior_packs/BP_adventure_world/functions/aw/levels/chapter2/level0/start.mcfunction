# ===== 开始关卡 =====
# 2-0 | 丛林神殿

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set chapter data 2
scoreboard players set level data 0

# --- 玩家处理 ---

## 播放标题 | 应先于[调用通用函数]模块
titleraw @a title {"rawtext":[{"translate":"§a§l丛 林 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -79 19 26 facing -73 20 55

# --- 调用通用函数 ---
function aw/lib/events/levels/start_chapter

# --- 生成各关的门 ---
## 2-1
summon aw:door -75 18 58 0 0 aw:set_forest_door
summon aw:door -69 18 65 90 0 aw:set_forest_door
## 2-2
summon aw:door -70 0 69 90 0 aw:set_forest_door
summon aw:door -104 -17 68 90 0 aw:set_forest_door
## 2-3
summon aw:door -141 -21 61 90 0 aw:set_forest_door
summon aw:door -167 -21 61 90 0 aw:set_forest_door

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§a丛林神殿"

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:forest_temple gameFog
