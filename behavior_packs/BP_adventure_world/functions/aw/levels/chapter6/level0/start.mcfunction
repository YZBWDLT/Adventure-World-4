# ===== 开始关卡 =====
# 6-0 | 山峦神殿

# --- 初始化 ---

## 调用初始化函数
function aw/levels/chapter6/init
## 设置关卡 ID
scoreboard players set chapter data 6
scoreboard players set level data 0
## 播放标题
titleraw @a title {"rawtext":[{"translate":"§7§l山 峦 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -81 -31 -28
## 调用通用函数
function aw/lib/events/levels/start_chapter
