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

# --- 封闭各关卡出口 ---
## 6-1
fill -82 -31 -62 -82 -29 -64 dripstone_block
## 6-2
fill -72 -19 -30 -70 -17 -30 purple_stained_glass
## 6-3
fill -74 -32 -23 -77 -32 -22 obsidian keep
fill -74 -39 8 -76 -37 8 deepslate_bricks

# --- 调用通用函数 ---
function aw/lib/events/levels/start_chapter

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§7山峦神殿"
