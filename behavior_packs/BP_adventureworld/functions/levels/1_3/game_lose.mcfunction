# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] background 121

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -126 7 58
spawnpoint @a -126 7 58

## 打开入口与出口
fill -139 11 34 -139 13 32 minecraft:air
fill -121 18 25 -121 20 27 minecraft:air

## 【无需修改】调用所有关卡通用的游戏失败函数
function levels/all_levels/game_lose