# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 111

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a1-1已完成！\n§b+1 生命药水 I\n§a[生命药水 I]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -118 1 14 -116 3 14 air
fill -118 1 32 -116 3 32 air

## --- 设置重生点 ---
spawnpoint @a -117 1 30

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
give @a aw:health_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}