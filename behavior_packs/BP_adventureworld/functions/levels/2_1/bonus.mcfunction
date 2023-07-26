# 关卡奖励
# -----原理-----
# 此为每关关卡结束后给予奖励的命令组。
# 先放置箱子，然后利用loot命令向箱子里插入奖励。
# 每关的奖励各不相同，所以在改动本文件时应当同时添加对应的战利品表。

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a2-1已完成！\n§b+1 弓，+12 箭，+2 生命药水 I\n§a[生命药水 I]§f上限+1，当前为2。"}]}

## 打开入口与出口
fill -76 18 58 -74 19 58 minecraft:air
setblock -75 20 58 minecraft:air
fill -69 18 64 -69 20 66 minecraft:air

## 设置重生点
spawnpoint @a -75 18 65

## 设置陷阱
structure load 2_1_trap -60 10 71

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus