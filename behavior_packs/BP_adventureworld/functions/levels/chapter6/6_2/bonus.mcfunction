# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] data 621

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a6-2已完成！§r"}]}

## --- 打开入口与出口 ---
fill -81 -19 -48 -79 -17 -48 air
fill -72 -19 -30 -70 -17 -30 air

## --- 打开6-3 ---
fill -74 -32 -23 -77 -32 -22 air[] replace obsidian[]

## --- 设置重生点 ---
tp @e[family=respawner] -75 -21 -36

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus
