# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 700

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -120 -17 105
tp @e[family=respawner] -120 -17 105

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose

## --- 将旷野之剑动画的时间线数据初始化 ---
scoreboard players set @e[name=timeline] time 3360
scoreboard players set @e[name=timeline] active 1
