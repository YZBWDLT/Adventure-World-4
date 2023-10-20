# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 431

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a4-3已完成！\n§b+1 钻石护腿"}]}

## --- 打开入口与出口 ---
fill -155 -12 16 -157 -10 16 air
fill -156 -18 5 -158 -18 7 structure_void[] replace ice

## --- 设置重生点 ---
spawnpoint @a -156 -12 14

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
replaceitem entity @a slot.armor.legs 0 aw:diamond_leggings 1 0 {"item_lock": { "mode": "lock_in_slot" } }