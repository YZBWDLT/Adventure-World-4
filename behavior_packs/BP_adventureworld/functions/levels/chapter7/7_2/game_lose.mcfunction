# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] data 711

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -120 -17 105
tp @e[family=respawner] -120 -17 105

## --- 打开入口 ---
fill -159 -18 109 -159 -16 111 air

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose

## --- 移除重生点的temp数据 ---
scoreboard players reset @e[family=respawner] temp