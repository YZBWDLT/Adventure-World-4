# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] stats 212

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -75 18 65
spawnpoint @a -75 18 65

## 打开入口与出口
fill -70 0 68 -70 3 70 minecraft:air
fill -104 -17 69 -104 -15 67 minecraft:air

## 调用所有关卡通用的游戏失败函数
function levels/all_levels/game_lose