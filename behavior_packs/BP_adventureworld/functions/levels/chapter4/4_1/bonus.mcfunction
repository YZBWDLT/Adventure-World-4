# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 411

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a4-1已完成！\n§b+1 生命药水 II\n§a[生命药水 II]§f上限+1，当前为2。\n§b你的弓似乎有了一些独特的魔力..."}]}

## --- 打开入口与出口 ---
fill -170 17 -19 -170 19 -21 air

## --- 打开下一关 ---
fill -155 7 -3 -157 9 -3 air

## --- 设置重生点 ---
spawnpoint @a -164 12 -17

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
give @a aw:health_potion_2 2 0 {"item_lock": { "mode": "lock_in_inventory" }}