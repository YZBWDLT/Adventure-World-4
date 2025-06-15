# ===== 开始关卡 =====
# 4-0 | 寒冰神殿

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set chapter data 4
scoreboard players set level data 0

# --- 玩家处理 ---

## 播放标题 | 应先于[调用通用函数]模块
titleraw @a title {"rawtext":[{"translate":"§3§l寒 冰 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -173 17 -8 facing -167 18 -15

# --- 封闭各关卡出口 ---
## 4-2 入口
fill -155 7 -3 -157 9 -3 ice
## 4-2
fill -155 7 16 -157 9 16 ice
## 4-3
fill -156 -18 5 -158 -18 7 ice replace water
## 4-4
fill -117 -31 7 -117 -29 5 ice

# --- 调用通用函数 ---
function aw/lib/modify_data/levels/start_chapter

# --- 生成章节名 ---
# 应后于[调用通用函数]模块
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§3寒冰神殿"

# --- 关卡特殊功能 ---
## 初始化 4-1
structure load aw:4_1_phase1 -168 16 -23
