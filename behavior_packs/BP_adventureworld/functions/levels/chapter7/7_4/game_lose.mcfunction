# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 731

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -199 -17 94
tp @e[family=respawner] -199 -17 94

## --- 打开入口与出口 ---
fill -223 -18 98 -223 -16 100 air
fill -235 -30 97 -233 -30 99 structure_void

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose

## --- 移除重生点的temp数据 ---
scoreboard players reset @e[family=respawner] temp