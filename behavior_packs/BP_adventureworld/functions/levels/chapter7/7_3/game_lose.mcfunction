# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] data 721

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -163 -18 106
tp @e[family=respawner] -163 -18 106

## --- 打开入口 ---
fill -192 -18 96 -192 -16 98 air

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose