# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 131

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a1-3已完成！\n§b+1 铁制全套装备\n§a[抗性提升药水 I]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -139 11 34 -139 13 32 air
fill -121 18 25 -121 20 27 air

## --- 设置重生点 ---
tp @e[family=respawner] -134 11 27

## --- 清除旧装备 ---
clear @a leather_helmet
clear @a leather_chestplate
clear @a leather_leggings
clear @a leather_boots
tellraw @a {"rawtext":[{"text":"§7已自动装备铁装备，皮革靴子已自动卸下"}]}

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus