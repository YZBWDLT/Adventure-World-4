# 关卡奖励
# -----原理-----
# 此为每关关卡结束后给予奖励的命令组。
# 先放置箱子，然后利用loot命令向箱子里插入奖励。
# 每关的奖励各不相同，所以在改动本文件时应当同时添加对应的战利品表。

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a1-3已完成！\n§b+1 铁制全套装备，+1 抗性提升药水 I\n§a[抗性提升药水 I]§f上限+1，当前为1。"}]}

## 打开入口与出口
fill -139 11 34 -139 13 32 minecraft:air
fill -121 18 25 -121 20 27 minecraft:air

## 清除原来的盔甲并提示
clear @a minecraft:leather_helmet
clear @a minecraft:leather_chestplate
clear @a minecraft:leather_leggings
tellraw @a {"rawtext":[{"text":"§a已将您原来的盔甲（除皮革靴子）清理，记得尽快换上更好的装备哦！"}]}

## 设置重生点
spawnpoint @a -134 11 27

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus