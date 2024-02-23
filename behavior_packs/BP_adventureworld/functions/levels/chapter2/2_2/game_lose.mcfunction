# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 211

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -75 18 65
tp @e[family=respawner] -75 18 65

## --- 打开入口 ---
fill -70 0 68 -70 3 70 air

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose