# ===== 开始关卡 =====

# --- 关卡 ID ---
scoreboard players set chapter data 2
scoreboard players set level data 0

# --- 调用通用函数 ---
# 重置标题时间、供应物品、播放音效和音乐、启用时间线、剧情模式触发对话
function lib/modify_data/levels/start_chapter

# --- 标题 ---
titleraw @a title {"rawtext":[{"text":"§a§l丛 林 神 殿"}]}
titleraw @a subtitle {"rawtext":[{"text":"§c2-0"}]}

# --- 先行封闭各关卡出口 ---
## 2-1
fill -69 18 64 -69 20 66 polished_diorite
## 2-2
fill -104 -17 69 -104 -15 67 polished_diorite
## 2-3
fill -167 -21 60 -167 -19 62 polished_diorite

# --- 2-0 的初始化 ---

## 传送玩家
tp @a -79 19 26 facing -73 20 55
## 本关标记
execute positioned -79 19 26 run function lib/modify_data/markers/init
## 下关标记 | 仅限纯战斗模式下直接跳到完成阶段
execute if score storyMode settings matches 0 run function levels/chapter2/level0/complete

# --- 生成章节名 ---
summon aw:marker -83 1 -2 0 0 aw:set_chapter_name "§a丛林神殿"
