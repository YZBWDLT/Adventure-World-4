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

# --- 封闭各关卡出口 ---
## 3-1
fill -186 -21 30 -186 -19 28 prismarine
setblock -186 -20 29 air
## 3-2
fill -173 -21 13 -171 -19 13 prismarine
## 3-3
fill -164 -21 26 -162 -19 26 prismarine
## 3-4
fill -168 -15 24 -168 -13 22 prismarine

# --- 调用通用函数 ---
function aw/lib/events/levels/start_chapter

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§b湖泊神殿"
