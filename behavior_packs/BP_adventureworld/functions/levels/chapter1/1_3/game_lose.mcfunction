# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=gameId] data 121

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -126 7 58
tp @e[family=respawner] -126 7 58

## --- 打开入口 ---
fill -139 11 34 -139 13 32 air

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose
