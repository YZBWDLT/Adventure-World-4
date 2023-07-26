# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] stats 600

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -78 -31 -29
spawnpoint @a -78 -31 -29

## 打开入口与出口
fill -75 -31 -46 -76 -29 -46 minecraft:air
fill -82 -31 -64 -82 -29 -63 minecraft:air

## 调用所有关卡通用的游戏失败函数
function levels/all_levels/game_lose

gamerule falldamage false