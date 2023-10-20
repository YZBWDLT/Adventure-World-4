# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 200

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -75 18 48
spawnpoint @a -75 18 48

## --- 打开入口与出口 ---
fill -74 20 58 -76 18 58 air
fill -69 18 64 -69 20 66 air

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose