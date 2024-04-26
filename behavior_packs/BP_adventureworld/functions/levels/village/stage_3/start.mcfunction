# ===== 进入本状态时 =====

scoreboard players set @e[name=gameId] data 5

# --- 锁定玩家视角对话 ---
tp @e[name=playerPosition] 36 1 -22
tp @e[name=facingPosition] @e[type=aw:npc,name="米云溪"]
function lib/states/dialogue/enable_lock_camera

function lib/states/timeline/enable

# --- 开放商店 ---
fill -21 0 37 -23 0 37 air

# --- 播放音乐 ---
function lib/music_player

# --- 移除悬浮文本 ---
kill @e[type=aw:text_display]

# --- 将田英传送过来以作准备 ---
event entity @e[name="田英"] should_not_see_player
tp @e[name="田英"] 33 1 -11 facing @e[name=facingPosition]
