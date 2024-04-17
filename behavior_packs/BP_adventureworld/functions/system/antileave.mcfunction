# ===== 防退出机制 =====
# 本系统仅对退出重进的玩家有效。

# --- 获取退出重进的玩家 ---
function lib/get_data/is_online_before

# --- 判断中途进入的玩家是否拥有记分板的值，没有值的予以添加或更新 ---
execute @a[scores={isOnline=0}] ~~~ function lib/init/player_data

# --- 将中途进入的玩家传送到respawner上 ---
execute @a[scores={isOnline=0}] ~~~ tp @s @e[family=respawner,c=1]

# --- 在游戏过程中，给予中途进入的玩家物品、药水和箭 ---
execute @e[name=developerMode,scores={data=1}] ~~~ execute @a[scores={isOnline=0}] ~~~ clear @s
execute @a[scores={isOnline=0}] ~~~ function lib/supplier/items
execute @a[scores={isOnline=0}] ~~~ function lib/supplier/potion
execute @a[scores={isOnline=0}] ~~~ function lib/supplier/arrow

# --- 播放音乐 ---
## 提示玩家
execute @a[scores={isOnline=0}] ~~~ tellraw @a[scores={isOnline=!0}] {"rawtext":[{"translate":"§e检测到有玩家进入游戏，为确保游戏体验，将重新播放场景音乐"}]}
execute @a[scores={isOnline=0}] ~~~ function lib/music_player

# --- 进行提醒 ---
execute @a[scores={isOnline=0}] ~~~ tellraw @s {"rawtext":[{"translate":"§e检测到您重新进入游戏，已将您传送到附近的重生点"}]}

# --- 将所有玩家设置为在线模式 ---
function lib/get_data/is_online_after
