# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a6-3已完成！\n§b+1 金苹果"}]}

## 打开入口与出口
fill -76 -37 -17 -74 -35 -17 minecraft:air
fill -74 -39 8 -76 -37 8 minecraft:air

## 设置重生点
spawnpoint @a -76 -38 -2

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus