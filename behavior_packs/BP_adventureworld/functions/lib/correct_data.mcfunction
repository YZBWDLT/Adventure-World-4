# ===== 纠正错误数据 =====
# 仅网易版

function lib/init/gamerule
execute @e[name=developerMode,scores={data=0}] ~~~ gamemode adventure @a
