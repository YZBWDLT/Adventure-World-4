# ===== 进入本状态时 =====

scoreboard players set @e[name=gameId] data 4

# --- 锁定玩家视角对话 ---
tp @e[name=playerPosition] -26 1 -37
tp @e[name=facingPosition] @e[type=aw:npc,name="田英"]
function lib/states/dialogue/enable_lock_camera

# --- 启用时间线 ---
function lib/states/timeline/enable
