# ===== 关卡奖励 =====
# 关卡完成后执行

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a6-2已完成！\n§b+1 蓝天之弓，+1 全提升药水 II\n§a§a[全提升药水 I]§f已升级到§a[全提升药水 II]§f"}]}

## --- 打开入口与出口 ---
fill -81 -19 -48 -79 -17 -48 air
fill -72 -19 -32 -70 -17 -32 air

## --- 设置重生点 ---
spawnpoint @a -75 -21 -36

## 打开6-3
fill -74 -32 -23 -77 -32 -22 air[] replace minecraft:obsidian[]

## 清除原来的弓并提示
clear @a minecraft:bow
tellraw @a {"rawtext":[{"text":"§a已将您原来的弓替换为神弓！"}]}

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus