# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 321

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -173 -21 30
tp @e[family=respawner] -173 -21 30

## --- 打开入口与出口 ---
fill -162 -21 26 -164 -19 26 structure_void

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose