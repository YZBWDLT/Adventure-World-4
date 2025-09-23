# ===== 开始关卡 =====
# 4-0 | 寒冰神殿

# --- 初始化 ---

## 调用初始化函数
function aw/levels/chapter4/init
## 设置关卡 ID
scoreboard players set chapter data 4
scoreboard players set level data 0
## 播放标题
titleraw @a title {"rawtext":[{"translate":"§9§l寒 冰 神 殿"}]}
## 在剧情模式下传送玩家
execute if score storyMode settings matches 1 run tp @a -173 17 -8 facing -167 18 -15
## 调用通用函数
function aw/lib/events/levels/start_chapter
