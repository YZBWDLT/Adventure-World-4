# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a7-2已完成！\n§b+1 金苹果"}]}

## 打开入口与出口
fill -159 -18 109 -159 -16 111 minecraft:air
fill -184 -18 98 -184 -16 96 minecraft:air

## 设置重生点
spawnpoint @a -163 -18 106

## 【无需修改】调用所有关卡通用奖励功能
function methods/all_levels/bonus