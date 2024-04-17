# ===== 快捷栏标题控制器 =====

# --- 初始化 ---
## 获取怪物和玩家数目
function lib/get_data/monster_amount
function lib/get_data/player_amount

# --- 获取玩家当前位置和当前关卡进度 ---
execute @a ~~~ function lib/get_data/entity_location
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/get_data/3_digit_seperator
execute @a ~~~ scoreboard players operation @s temp = @s position
execute @a ~~~ function lib/get_data/3_digit_seperator

# --- 显示关卡进度标记 ---
execute @e[name=tick,scores={time=5}] ~~~ function lib/show_wave

# --- 按玩家数显示记分板 ---

## 纯战斗模式、玩家数为1时
execute @e[name=storyMode,scores={data=0}] ~~~ execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ function lib/scoreboard/singleplayer_combat_mode
## 纯战斗模式、玩家数大于2时
execute @e[name=storyMode,scores={data=0}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ function lib/scoreboard/multiplayer_combat_mode
## 剧情模式、玩家数为1时
execute @e[name=storyMode,scores={data=1}] ~~~ execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ function lib/scoreboard/singleplayer_story_mode
## 剧情模式、玩家数大于2时
execute @e[name=storyMode,scores={data=1}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ function lib/scoreboard/multiplayer_story_mode

# --- 特殊快捷栏标题 ---

## 物品快捷栏标题
function lib/scoreboard/items
