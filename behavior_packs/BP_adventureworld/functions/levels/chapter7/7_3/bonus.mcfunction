# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 731

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a7-3已完成！"}]}

## --- 打开入口与出口 ---
fill -192 -18 96 -192 -16 98 air
fill -217 -18 98 -217 -16 100 air

## --- 设置重生点 ---
spawnpoint @a -199 -17 94

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus