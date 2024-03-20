# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] data 431

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -156 -12 14
tp @e[family=respawner] -156 -12 14

## --- 打开入口与出口 ---
fill -143 -31 7 -143 -29 5 air

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose

## --- 清除所有怪物 ---
kill @e[family=monster]
kill @e[type=item]

# --- 关卡结束或失败后，回归正常关卡完成检测 ---
function lib/states/level_complete_delay/disable