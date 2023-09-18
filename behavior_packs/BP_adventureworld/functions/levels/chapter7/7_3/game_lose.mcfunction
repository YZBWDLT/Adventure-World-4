# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 723

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -163 -18 106
spawnpoint @a -163 -18 106

## --- 打开入口与出口 ---
fill -192 -18 96 -192 -16 98 air
fill -217 -18 98 -217 -16 100 air

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose