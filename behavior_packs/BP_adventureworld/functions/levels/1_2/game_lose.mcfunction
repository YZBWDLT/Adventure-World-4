# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] background 111

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -117 1 30
spawnpoint @a -117 1 30

## 打开入口与出口
fill -127 5 50 -125 7 50 minecraft:air

## 【无需修改】调用所有关卡通用的游戏失败函数
function methods/all_levels/game_lose