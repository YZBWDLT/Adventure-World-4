# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 231

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a2-3已完成！\n§b+1 钢剑，+1 生命提升药水 I\n§a[生命提升药水 I]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -141 -21 60 -141 -19 62 air
fill -167 -21 60 -167 -19 62 air

## --- 设置重生点 ---
spawnpoint @a -154 -21 61

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
clear @a aw:normal_sword
give @a aw:steel_sword 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a aw:health_boost_potion_1 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
tellraw @a {"rawtext":[{"text":"§a已将您原来的剑替换为钢剑！"}]}
