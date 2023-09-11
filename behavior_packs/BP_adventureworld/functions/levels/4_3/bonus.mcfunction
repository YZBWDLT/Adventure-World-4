# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a4-3已完成！\n§b+1 钻石护腿"}]}

## 打开入口与出口
fill -155 -12 16 -157 -10 16 minecraft:air
fill -156 -18 5 -158 -18 7 structure_void[] replace minecraft:ice

## 设置重生点
spawnpoint @a -156 -12 14

## 清除原来的盔甲并提示
clear @a aw:iron_leggings
tellraw @a {"rawtext":[{"text":"§a已将您原来的铁护腿清理，记得尽快换上更好的装备哦！"}]}

## 【无需修改】调用所有关卡通用奖励功能
function methods/all_levels/bonus