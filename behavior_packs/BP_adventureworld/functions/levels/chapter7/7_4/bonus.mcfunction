# ===== 关卡奖励 =====
# 关卡完成后执行

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a7-4已完成！\n§b+1 金苹果"}]}

## --- 打开入口与出口 ---
fill -223 -18 98 -223 -16 100 air

## --- 设置重生点 ---
spawnpoint @a -225 -18 99

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus