# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a3-3已完成！"}]}

## 打开入口与出口
fill -162 -21 26 -164 -19 26 minecraft:structure_void

## 开启下一关
fill -168 -15 22 -168 -13 24 minecraft:structure_void

## 设置重生点
spawnpoint @a -173 -21 30

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus