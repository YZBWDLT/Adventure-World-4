# ===== 进入本状态时 =====

scoreboard players set @e[name=level] data 9

function lib/dialogue/enable
function lib/timeline/enable

# 给予玩家缓慢失明效果
effect @a slowness 10 100 true
effect @a blindness 10 0 true