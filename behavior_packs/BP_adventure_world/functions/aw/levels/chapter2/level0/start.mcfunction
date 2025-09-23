# ===== 开始关卡 =====
# 2-0 | 丛林神殿

# --- 初始化 ---

## 调用初始化函数
function aw/levels/chapter2/init
## 设置关卡 ID
scoreboard players set chapter data 2
scoreboard players set level data 0
## 播放标题
titleraw @a title {"rawtext":[{"translate":"§a§l丛 林 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -79 19 26 facing -73 20 55
## 调用通用函数
function aw/lib/events/levels/start_chapter
