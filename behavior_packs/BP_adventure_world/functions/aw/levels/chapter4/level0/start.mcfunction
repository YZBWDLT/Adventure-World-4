# ===== 开始关卡 =====
# 4-0 | 寒冰神殿

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set chapter data 4
scoreboard players set level data 0

# --- 玩家处理 ---

## 播放标题 | 应先于[调用通用函数]模块
titleraw @a title {"rawtext":[{"translate":"§9§l寒 冰 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -173 17 -8 facing -167 18 -15

# --- 调用通用函数 ---
function aw/lib/events/levels/start_chapter

# --- 生成各关的门 ---
## 4-1
summon aw:door -170 17 -20 90 0 aw:set_frost_door
## 4-2
summon aw:door -156 7 -3 0 0 aw:set_frost_door "4-2"
summon aw:door -156 7 16 0 0 aw:set_frost_door "4-2"
## 4-3
summon aw:door -156 -12 16 0 0 aw:set_frost_door
## 4-4
summon aw:door -143 -31 6 90 0 aw:set_frost_door
summon aw:door -117 -31 6 90 0 aw:set_frost_door
## 封闭 4-2
event entity @e[type=aw:door,name="4-2"] aw:close_door
## 用我超！冰！封闭 4-3 出口（
fill -156 -18 5 -158 -18 7 ice replace water

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§9寒冰神殿"

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:frost_temple gameFog

# --- 关卡特殊功能 ---
## 初始化 4-1
structure load aw:4_1_phase1 -168 16 -23
