# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] background 700

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -120 -18 105
spawnpoint @a -120 -18 105

## 调用所有关卡通用的游戏失败函数
function levels/all_levels/game_lose

## 将旷野之剑动画的时间线数据初始化
scoreboard players set @e[name=timeline] time 1050
scoreboard players set @e[name=timeline] active 1
function methods/timeline/enable_without_flowing