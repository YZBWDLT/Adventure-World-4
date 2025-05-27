# ===== 进入试炼门口 =====

# --- 更改关卡ID ---
scoreboard players set @e[name=gameId] data 1004

# --- 触发对话 ---
function lib/states/dialogue/enable
function lib/states/timeline/enable_without_flowing

# --- 重置重生点 ---
tp @a -15.0 1 82
tp @e[family=respawner] -15.0 1 88

# --- 调整或获取数据 ---
## 重置下一局的难度加和和剧情模式
scoreboard players set temp.difficultyAdder record 0
scoreboard players set temp.storyMode record 1
scoreboard players operation @e[name=difficultyAdder] temp = temp.difficultyAdder record
scoreboard players operation @e[name=storyMode] temp = temp.storyMode record
## 清除多余的实体
kill @e[family=text_display]
## 传送张宇到此位置
tp @e[name="张宇"] -14 1 89

# --- 重置按钮并显示提示 ---
setblock -13 2 87 stonebrick["stone_brick_type":"chiseled"]
setblock -13 1 87 cobblestone_wall["wall_block_type":"stone_brick"]
setblock -13 2 86 polished_blackstone_button["facing_direction":2]
summon aw:text_display "§a更改难度" -13 1.4 87

setblock -18 2 87 stonebrick["stone_brick_type":"chiseled"]
setblock -18 1 87 cobblestone_wall["wall_block_type":"stone_brick"]
setblock -18 2 86 polished_blackstone_button["facing_direction":2]
summon aw:text_display "§a更改模式" -18 1.4 87

summon aw:text_display "§b与张宇交互回到村庄" -15.0 2.3 90
summon aw:text_display "§b进入神殿以按照你的设置开始新的试炼" -15.0 2.0 90
summon aw:text_display "§c进入后不能再中途更改" -15.0 1.7 90

# --- 播放音乐 ---
function lib/music_player

# --- 执行退出stage_3的命令 ---
function levels/end/stage_3/on_exit
