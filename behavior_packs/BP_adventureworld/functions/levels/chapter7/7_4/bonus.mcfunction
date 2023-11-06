# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 741

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a7-4已完成！"}]}

## --- 打开入口与出口 ---
fill -223 -18 98 -223 -16 100 air

## --- 设置重生点 ---
tp @e[family=respawner] -225 -18 99

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus