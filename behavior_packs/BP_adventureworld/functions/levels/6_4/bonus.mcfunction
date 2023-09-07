# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a6-4已完成！\n§b+1 力量药水 II\n§a[力量药水 I]§f已升级到§a[力量药水 II]§f"}]}

## 打开入口与出口
fill -76 -39 20 -74 -37 20 minecraft:structure_void

## 设置重生点
spawnpoint @a -75 -38 30

## 清除残余岩浆
fill -89 -40 49 -61 -39 21 minecraft:air[] replace minecraft:lava[]

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus

## 将旷野之剑动画的时间线数据初始化
scoreboard players set @e[name=timeline] time 0
scoreboard players set @e[name=timeline] active 1
function methods/timeline/enable