# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a4-2已完成！\n§b+1 箭袋，+1 金苹果，+1 抗性提升药水 II\n§a[抗性提升药水 I]§f已升级到§a[抗性提升药水 II]§f！"}]}

## 打开入口与出口
fill -155 7 -3 -157 9 -3 minecraft:air
fill -155 7 16 -157 9 16 minecraft:air

## 设置重生点
spawnpoint @a -157 7 6

## 【无需修改】调用所有关卡通用奖励功能
function methods/all_levels/bonus