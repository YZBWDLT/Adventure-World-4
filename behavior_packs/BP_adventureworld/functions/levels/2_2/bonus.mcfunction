# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a2-2已完成！\n§b+1 生命药水 II\n§a[生命药水 II]§f上限+1，当前为1。"}]}

## 打开入口与出口
fill -70 0 68 -70 3 70 minecraft:air
fill -104 -17 69 -104 -15 67 minecraft:air

## 设置重生点
spawnpoint @a -92 -17 67

## 设置陷阱
structure load 2_2_trap1 -120 -16 67
structure load 2_2_trap2 -119 -16 53
structure load 2_2_trap3 -124 -16 54
structure load 2_2_trap4 -136 -10 54

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus