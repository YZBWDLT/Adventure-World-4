# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 621

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a6-2已完成！\n§b+1 全提升药水 II\n§a§a[全提升药水 I]§f已升级到§a[全提升药水 II]§f\n§b你的弓似乎有了一些独特的魔力..."}]}

## --- 打开入口与出口 ---
fill -81 -19 -48 -79 -17 -48 air
fill -72 -19 -32 -70 -17 -32 air

## --- 打开6-3 ---
fill -74 -32 -23 -77 -32 -22 air[] replace obsidian[]

## --- 设置重生点 ---
tp @e[family=respawner] -75 -21 -36

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
give @a aw:boost_potion_2 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
