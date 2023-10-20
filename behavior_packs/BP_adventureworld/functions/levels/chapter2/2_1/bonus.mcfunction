# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 211

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a2-1已完成！\n§b+1 弓，+12 箭，+2 生命药水 I\n§a[生命药水 I]§f上限+1，当前为2。"}]}

## --- 打开入口与出口 ---
fill -74 20 58 -76 18 58 air
fill -69 18 64 -69 20 66 air

## --- 设置重生点 ---
spawnpoint @a -75 18 65

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
give @a bow 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
give @a[hasitem={item=bow}] arrow 12 0 {"item_lock": { "mode": "lock_in_inventory" }}
give @a aw:health_potion_1 2 0 {"item_lock": { "mode": "lock_in_inventory" }}

## --- 设置陷阱 ---
##<!> 计划在未来加入全域检测功能
structure load 2_1_trap -60 10 71
