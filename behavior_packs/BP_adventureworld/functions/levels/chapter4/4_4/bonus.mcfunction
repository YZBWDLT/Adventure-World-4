# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 441

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a4-4已完成！\n§b+1 钻石胸甲\n§a[生命提升药水 I]§f已升级到§a[生命提升药水 II]§f"}]}

## --- 打开入口与出口 ---
fill -143 -31 7 -143 -29 5 air
fill -117 -31 7 -117 -29 5 air

## --- 设置重生点 ---
tp @e[family=respawner] -130 -31 6

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
replaceitem entity @a slot.armor.chest 0 aw:diamond_chestplate 1 0 {"item_lock": { "mode": "lock_in_slot" } }

## --- 清除所有怪物 ---
kill @e[family=monster]
kill @e[type=item]

## --- 设置当前完成波数为2 ---
scoreboard players set @e[name=wave] background 2