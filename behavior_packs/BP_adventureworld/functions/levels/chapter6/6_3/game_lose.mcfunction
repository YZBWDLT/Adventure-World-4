# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 621

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -75 -21 -36
tp @e[family=respawner] -75 -21 -36

## --- 打开入口 ---
fill -76 -37 -17 -74 -35 -17 air

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose