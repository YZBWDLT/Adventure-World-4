# ===== 进入本状态时 =====

scoreboard players set @e[name=gameId] data 8

function lib/states/dialogue/enable_lock_camera
function lib/states/timeline/enable

# --- 将米云溪和田英传送到场景处 ---
tp @e[name="田英"] -23 1 93 facing -19 2 96
tp @e[name="米云溪"] -17 1 90 facing -16 1 96

# --- 锁定玩家相机位置 ---
tp @e[name=playerPosition] -12 1 88
tp @e[name=facingPosition] -17 1 95

# --- 禁止米云溪和田英看向玩家 ---
event entity @e[name="田英"] "aw:see_player=false"
event entity @e[name="米云溪"] "aw:see_player=false"

# --- 重置重生点 ---
tp @e[family=respawner] -16 1 82

# --- 播放音乐 ---
function lib/music_player
