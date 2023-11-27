# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 341

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a3-4已完成！\n§b+1 脊柱之盾\n§a[力量药水 I]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -168 -15 22 -168 -13 24 structure_void
fill -174 17 18 -172 19 18 structure_void

## --- 设置重生点 ---
tp @e[family=respawner] -173 -21 30

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
give @a shield 1 0 {"item_lock": { "mode": "lock_in_inventory" } }
