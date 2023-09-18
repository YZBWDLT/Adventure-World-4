# ===== 关卡奖励 =====
# 关卡完成后执行

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a7-1已完成！"}]}

## --- 打开入口与出口 ---
fill -150 -18 102 -150 -16 100 air

## --- 设置重生点 ---
spawnpoint @a -120 -18 105

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus