# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 301

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -173 -21 30
tp @e[family=respawner] -173 -21 30

## --- 打开入口 ---
## （因为入口始终不封闭，因此不特意写打开出口了）

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose