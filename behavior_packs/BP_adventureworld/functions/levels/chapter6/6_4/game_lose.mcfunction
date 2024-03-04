# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] data 631

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -76 -38 -2
tp @e[family=respawner] -76 -38 -2

## --- 打开入口 ---
fill -76 -39 20 -74 -37 20 structure_void

## --- 清除残余岩浆 ---
structure load 6_4_no_lava -89 -40 21

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose