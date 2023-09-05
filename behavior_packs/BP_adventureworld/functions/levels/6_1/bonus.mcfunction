# 关卡奖励

## tellraw提示
tellraw @a {"rawtext":[{"text":"§a6-1已完成！\n§b+1 全恢复药水 II\n§a[全恢复药水 II]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -75 -31 -46 -77 -29 -45 air[] replace barrier[]
fill -75 -31 -46 -77 -29 -45 air[] replace pointed_dripstone[]

fill -82 -29 -62 -83 -31 -64 air[] replace barrier[]
fill -82 -29 -62 -83 -31 -64 air[] replace pointed_dripstone[]


## 设置重生点
spawnpoint @a -77 -31 -64

## 【无需修改】调用所有关卡通用奖励功能
function levels/all_levels/bonus

gamerule falldamage false