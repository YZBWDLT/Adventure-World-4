# ===== 进入本状态时 =====

scoreboard players set @e[name=level] data 5

# --- 锁定玩家视角对话 ---
tp @e[name=playerPosition] 36 1 -22
tp @e[name=facingPosition] @e[type=aw:npc,name="米云溪"]
function lib/states/dialogue/enable_lock_camera

function lib/states/timeline/enable

# --- 开放商店 ---
fill -21 0 37 -23 0 37 air