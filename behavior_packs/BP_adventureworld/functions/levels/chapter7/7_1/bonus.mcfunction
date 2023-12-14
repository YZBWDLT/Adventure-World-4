# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 711

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a7-1已完成！§r"}]}

## --- 打开入口与出口 ---
fill -150 -18 102 -150 -16 100 air

## --- 设置重生点 ---
tp @e[family=respawner] -120 -17 105

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus