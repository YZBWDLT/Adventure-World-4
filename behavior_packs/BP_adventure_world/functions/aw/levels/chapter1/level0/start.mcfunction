# ===== 开始关卡 =====
# 1-0 | 沙漠神殿

# --- 初始化 ---

## 调用初始化函数
function aw/levels/chapter1/init
## 设置关卡 ID
scoreboard players set chapter data 1
scoreboard players set level data 0
## 播放标题
titleraw @a title {"rawtext":[{"translate":"§e§l沙 漠 神 殿"}]}
## 调用通用函数
function aw/lib/events/levels/start_chapter

# --- 关卡特殊功能 ---

## 设置重生点 | 特别地，因为这是整个试炼的开始，所以先设置重生点以防不测
spawnpoint @a -117 1 -6
## 传送玩家 | 特别地，因为这是整个试炼的开始，所以一视同仁地传送
tp @a -117 1 -6 0 0
## 清除玩家物品 | 特别地，因为这是整个试炼的开始，所以先清除干净物品
clear @a
## 若处于剧情模式下且未启用传声石结晶，则启用之
execute if score storyMode settings matches 1 if score allowAcousticStoneCrystal data matches 0 run scoreboard players set allowAcousticStoneCrystal data 1
## 允许玩家此时使用退出试炼
scoreboard players set allowQuit data 1
