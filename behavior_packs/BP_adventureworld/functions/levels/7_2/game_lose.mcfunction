# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] background 712

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -120 -18 105
spawnpoint @a -120 -18 105

## 打开入口与出口
fill -159 -18 109 -159 -16 111 minecraft:air
fill -184 -18 98 -184 -16 96 minecraft:air

## 调用所有关卡通用的游戏失败函数
function methods/all_levels/game_lose