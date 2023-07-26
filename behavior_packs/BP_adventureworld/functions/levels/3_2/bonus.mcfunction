# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a3-2已完成！\n§b+1 深海探索者 III 附魔钻石靴子，+1 全提升药水 I\n§a[全提升药水 I]§f上限+1，当前为1。"}]}

## 打开入口与出口
fill -171 -21 13 -173 -19 13 minecraft:structure_void

## 开启下一关
fill -162 -21 26 -164 -19 26 minecraft:structure_void

## 设置重生点
spawnpoint @a -173 -21 30

## 清除原来的盔甲并提示
clear @a aw:iron_boots
tellraw @a {"rawtext":[{"text":"§a已将您原来的铁靴子清理，记得尽快换上更好的装备哦！"}]}

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus