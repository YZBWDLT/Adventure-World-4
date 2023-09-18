# ===== 关卡奖励 =====
# 关卡完成后执行

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a6-3已完成！\n§b+1 金苹果"}]}

## --- 打开入口与出口 ---
fill -76 -37 -17 -74 -35 -17 air
fill -74 -39 8 -76 -37 8 air

## --- 设置重生点 ---
spawnpoint @a -76 -38 -2

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus