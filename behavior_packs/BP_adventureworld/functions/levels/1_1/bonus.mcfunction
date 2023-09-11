# 关卡奖励
# -----原理-----
# 此为每关关卡结束后给予奖励的命令组。
# 先放置箱子，然后利用loot命令向箱子里插入奖励。
# 每关的奖励各不相同，所以在改动本文件时应当同时添加对应的战利品表。

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a1-1已完成！\n§b+1 生命药水 I\n§a[生命药水 I]§f上限+1，当前为1。"}]}

## 打开入口与出口
fill -118 1 14 -116 3 14 minecraft:air
fill -118 1 32 -116 3 32 minecraft:air

## 设置重生点
spawnpoint @a -117 1 30

## 【无需修改】调用所有关卡通用奖励功能
function methods/all_levels/bonus