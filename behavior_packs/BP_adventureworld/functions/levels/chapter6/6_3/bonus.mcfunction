# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 631

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a6-3已完成！§r"}]}

## --- 打开入口与出口 ---
fill -76 -37 -17 -74 -35 -17 air
fill -74 -39 8 -76 -37 8 air

## --- 设置重生点 ---
tp @e[family=respawner] -76 -38 -2

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus