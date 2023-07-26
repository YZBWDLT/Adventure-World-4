# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a2-3已完成！\n§b+1 钢剑，+1 生命提升药水 I\n§a[生命提升药水 I]§f上限+1，当前为1。"}]}

## 打开入口与出口
fill -141 -21 60 -141 -19 62 minecraft:air
fill -167 -21 60 -167 -19 62 minecraft:air

## 清除原来的剑并提示
clear @a aw:normal_sword
tellraw @a {"rawtext":[{"text":"§a已将您原来的剑替换为钢剑！"}]}

## 设置重生点
spawnpoint @a -154 -21 61

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus