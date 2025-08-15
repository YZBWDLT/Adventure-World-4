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

# --- 封闭各关卡出口 ---
## 2-1
fill -69 18 64 -69 20 66 polished_diorite
## 2-2
fill -104 -17 69 -104 -15 67 polished_diorite
## 2-3
fill -167 -21 60 -167 -19 62 polished_diorite

# --- 调用通用函数 ---
function aw/lib/events/levels/start_chapter

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§a丛林神殿"
