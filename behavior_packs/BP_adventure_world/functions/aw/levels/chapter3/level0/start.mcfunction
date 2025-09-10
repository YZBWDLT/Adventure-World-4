# ===== 开始关卡 =====
# 3-0 | 湖泊神殿

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set chapter data 3
scoreboard players set level data 0

# --- 玩家处理 ---

## 播放标题 | 应先于[调用通用函数]模块
titleraw @a title {"rawtext":[{"translate":"§b§l湖 泊 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -173 -21 30 180 0

# --- 调用通用函数 ---
function aw/lib/events/levels/start_chapter

# --- 生成各关的门 ---
## 3-1
summon aw:door -198 -21 29 0 0 aw:set_lake_door "3-1"
## 3-2
summon aw:door -172 -21 13 0 0 aw:set_lake_door "3-2"
## 3-3
summon aw:door -163 -21 26 0 0 aw:set_lake_door "3-3"
## 3-4
summon aw:door -168 -15 23 90 0 aw:set_lake_door "3-4"
summon aw:door -173 17 18 0 0 aw:set_lake_door "3-4"
## 封闭 3-2、3-3 和 3-4
event entity @e[type=aw:door,name="3-2"] aw:close_door
event entity @e[type=aw:door,name="3-3"] aw:close_door
event entity @e[type=aw:door,name="3-4"] aw:close_door

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§b湖泊神殿"

# --- 添加迷雾 ---
fog @a remove gameFog
fog @a push aw:lake_temple gameFog
