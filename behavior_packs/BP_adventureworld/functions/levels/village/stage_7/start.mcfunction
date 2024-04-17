# ===== 进入本状态时 =====

scoreboard players set @e[name=gameId] data 9

function lib/states/dialogue/enable
function lib/states/timeline/enable

# 给予玩家缓慢失明效果
effect @a slowness 10 100 true
effect @a blindness 10 0 true