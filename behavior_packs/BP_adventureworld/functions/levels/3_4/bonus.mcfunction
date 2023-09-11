# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a3-4已完成！\n§b+1 脊柱之盾，+1 力量药水 I\n§a[力量药水 I]§f上限+1，当前为1。"}]}

## 打开入口与出口
fill -168 -15 22 -168 -13 24 minecraft:structure_void
fill -174 17 18 -172 19 18 minecraft:structure_void

## 设置重生点
spawnpoint @a -173 -21 30

## 【无需修改】调用所有关卡通用奖励功能
function methods/all_levels/bonus