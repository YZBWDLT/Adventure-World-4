# ===== 开始关卡 =====
# 5-0 | 红石神殿

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set chapter data 5
scoreboard players set level data 0

# --- 玩家处理 ---

## 播放标题 | 应先于[调用通用函数]模块
titleraw @a title {"rawtext":[{"translate":"§f§l红 石 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -95 -31 -6 180 0

# --- 调用通用函数 ---
function aw/lib/events/levels/start_chapter

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§f红石神殿"
