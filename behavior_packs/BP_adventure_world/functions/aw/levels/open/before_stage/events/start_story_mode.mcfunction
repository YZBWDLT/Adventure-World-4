# ===== 启动剧情模式 =====

# --- 变量设置 ---

## 设置为剧情模式
scoreboard players set storyMode settings 1
## 更换时间线状态 | 切换为状态 2，时间值 0，流逝时间
function aw/lib/modify_data/timeline/dont_keep_value
function aw/lib/modify_data/timeline/enable_time_lapse
function aw/lib/events/start_dialogue
scoreboard players set timeline active 2

# --- 相机黑屏 ---
camera @a fade time 2 10 5 color 0 0 0

# --- 双模式的通用内容 ---
## 玩家模式
gamemode adventure @a
## 清除信标
fill 43 25 86 45 25 86 air replace beacon
## 清除悬浮文本
event entity @e[type=aw:text_display] aw:remove_immediately
## 提示玩家调整设置
tellraw @a {"rawtext":[{"translate":"§7§l为保证游戏体验，请提前进行如下设置：§r\n§7* §b音频 - 音乐§7调至§b100§r\n§7* §b可访问性 - 文本背景不透明度§7调至§b0%%§7§o（如有的话请调整）"}]}
