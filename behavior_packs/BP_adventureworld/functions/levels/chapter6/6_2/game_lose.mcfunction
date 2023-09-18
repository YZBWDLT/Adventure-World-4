# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 612

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -77 -31 -64
spawnpoint @a -77 -31 -64

## --- 打开入口与出口 ---
fill -81 -19 -48 -79 -17 -48 air
fill -72 -19 -32 -70 -17 -32 air

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose