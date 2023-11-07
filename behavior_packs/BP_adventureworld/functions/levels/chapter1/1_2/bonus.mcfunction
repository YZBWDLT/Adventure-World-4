# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 121

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a1-2已完成！\n§b+1 绳枪\n§a[生命恢复药水 I]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -127 5 50 -125 7 50 air

## --- 设置重生点 ---
tp @e[family=respawner] -126 7 58

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
give @a aw:hookshot 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
give @a aw:enable_crosshair 1 0 {"item_lock":{"mode":"lock_in_inventory"}}