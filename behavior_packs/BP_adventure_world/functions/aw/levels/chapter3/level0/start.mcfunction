# ===== 开始关卡 =====
# 3-0 | 湖泊神殿

# --- 初始化 ---

## 调用初始化函数
function aw/levels/chapter3/init
## 设置关卡 ID
scoreboard players set chapter data 3
scoreboard players set level data 0
## 播放标题
titleraw @a title {"rawtext":[{"translate":"§b§l湖 泊 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -173 -21 30 180 0
## 调用通用函数
function aw/lib/events/levels/start_chapter
