# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a3-1已完成！\n§b+1 水下呼吸 III 附魔钻石头盔，+3 生命药水 I\n§a[生命药水 I]§f上限+1，当前为3。"}]}
tellraw @a {"rawtext":[{"text":"§7别忘了用钻石头盔哦！:D"}]}

## 打开入口与出口
fill -199 -21 29 -197 -19 29 minecraft:air

## 打开下一关入口
fill -173 -21 13 -171 -19 13 minecraft:structure_void

## 设置重生点
spawnpoint @a -188 -21 29

## 清除原来的盔甲并提示
clear @a aw:iron_helmet
tellraw @a {"rawtext":[{"text":"§a已将您原来的铁头盔清理，记得尽快换上更好的装备哦！"}]}

## 【无需修改】调用所有关卡通用奖励功能
function methods/all_levels/bonus