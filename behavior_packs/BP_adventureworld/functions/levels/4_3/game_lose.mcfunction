# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] background 423

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -157 7 6
spawnpoint @a -157 7 6

## 打开入口与出口
fill -155 -12 16 -157 -10 16 minecraft:air
fill -156 -18 5 -158 -18 7 minecraft:structure_void[] replace minecraft:ice

## 调用所有关卡通用的游戏失败函数
function levels/all_levels/game_lose