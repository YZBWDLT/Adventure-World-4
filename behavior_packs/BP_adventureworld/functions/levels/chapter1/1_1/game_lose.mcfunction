# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 100

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -117 1 -6
spawnpoint @a -117 1 -6

## --- 打开入口与出口 ---
fill -118 1 14 -116 3 14 air
fill -118 1 32 -116 3 32 air

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose