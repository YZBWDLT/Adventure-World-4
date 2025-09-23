# ===== 开始关卡 =====
# 5-0 | 红石神殿

# --- 初始化 ---

## 调用初始化函数
function aw/levels/chapter5/init
## 设置关卡 ID
scoreboard players set chapter data 5
scoreboard players set level data 0
## 播放标题
titleraw @a title {"rawtext":[{"translate":"§f§l红 石 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -95 -31 -6 180 0
## 调用通用函数
function aw/lib/events/levels/start_chapter
