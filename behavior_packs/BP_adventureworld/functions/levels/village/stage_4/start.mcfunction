# ===== 进入本状态时 =====

scoreboard players set @e[name=level] data 6

# --- 锁定玩家视角对话 ---
tp @e[name=playerPosition] -21 3 39
tp @e[name=facingPosition] @e[type=aw:npc,name="张宇"]
function lib/dialogue/enable_lock_camera

function lib/timeline/enable
