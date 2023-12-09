# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 321

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a3-2已完成！\n§b+1 钻石靴子\n§a[全提升药水 I]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -171 -21 13 -173 -19 13 structure_void

## --- 打开下一关入口 ---
fill -162 -21 26 -164 -19 26 structure_void

## --- 设置重生点 ---
tp @e[family=respawner] -173 -21 30

## --- 调用所有关卡通用奖励功能 ---
clear @a aw:iron_boots
clear @a leather_boots
scoreboard players set @a isHoldingBoots 0
function methods/all_levels/bonus
