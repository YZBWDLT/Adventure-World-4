# ===== 快捷栏标题控制器 =====

# --- 初始化 ---
## 获取怪物和玩家数目
function lib/get_monster_amount
function lib/get_player_amount

# --- 获取玩家当前位置和当前关卡进度 ---
execute @a ~~~ function lib/get_entity_location
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/3_digit_seperator
execute @a ~~~ scoreboard players operation @s temp = @s inLevelArea
execute @a ~~~ function lib/3_digit_seperator

# --- 显示关卡进度标记 ---
execute @e[name=tick,scores={time=5}] ~~~ function lib/show_wave

# --- 按玩家数显示记分板 ---

## 玩家数为1时，不显示玩家数量
execute @e[name=allPlayersAmount,scores={data=1}] ~~~ function system/level_controllers/actionbar_singleplayer
## 玩家数大于1时，显示玩家数量
execute @e[name=allPlayersAmount,scores={data=2..}] ~~~ function system/level_controllers/actionbar_multiplayer

# --- 特殊快捷栏标题 ---

## 物品快捷栏标题
function system/level_controllers/actionbar_items
