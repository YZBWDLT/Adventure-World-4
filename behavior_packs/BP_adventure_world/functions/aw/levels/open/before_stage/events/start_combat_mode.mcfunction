# ===== 启动纯战斗模式 =====

# --- 变量设置 ---

## 设置为纯战斗模式
scoreboard players set storyMode settings 0

# --- 播放音乐 ---
function aw/lib/modify_data/play_music

# --- 直接调用 0-5 的启动函数 ---
function aw/levels/open/stage5/start

# --- 双模式的通用内容 ---
## 玩家模式
gamemode adventure @a
## 清除信标
fill 43 25 86 45 25 86 air replace beacon
## 清除悬浮文本
kill @e[type=aw:text_display]
## 提示玩家打开音乐
tellraw @a {"rawtext":[{"translate":"§7为保证游戏体验，请将§b设置 - 音频 - 音乐§7调至§b100§7"}]}
