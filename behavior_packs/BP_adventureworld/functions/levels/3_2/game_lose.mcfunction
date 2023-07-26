# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] stats 312

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -173 -21 30
spawnpoint @a -173 -21 30

## 打开入口与出口
fill -171 -21 13 -173 -19 13 minecraft:structure_void

## 调用所有关卡通用的游戏失败函数
function levels/all_levels/game_lose