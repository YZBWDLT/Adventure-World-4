# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 411

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -172 17 -6
tp @e[family=respawner] -172 17 -6

## --- 打开入口与出口 ---
fill -155 7 -3 -157 9 -3 air
fill -155 7 16 -157 9 16 air

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose