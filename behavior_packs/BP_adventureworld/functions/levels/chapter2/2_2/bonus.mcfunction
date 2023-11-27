# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 221

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a2-2已完成！\n§a[生命药水 II]§f上限+1，当前为1。"}]}

## --- 打开入口与出口 ---
fill -70 0 68 -70 3 70 air
fill -104 -17 69 -104 -15 67 air

## --- 设置重生点 ---
tp @e[family=respawner] -92 -17 67

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 设置陷阱 ---
##<!> 计划在未来加入全域检测功能
structure load 2_2_trap1 -120 -16 67
structure load 2_2_trap2 -119 -16 53
structure load 2_2_trap3 -124 -16 54
structure load 2_2_trap4 -136 -10 54
