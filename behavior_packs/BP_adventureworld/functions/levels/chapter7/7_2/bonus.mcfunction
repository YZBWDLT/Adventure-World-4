# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] data 721

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a7-2已完成！§r"}]}

## --- 打开入口与出口 ---
fill -159 -18 109 -159 -16 111 air
fill -184 -18 98 -184 -16 96 air

## --- 设置重生点 ---
tp @e[family=respawner] -163 -18 106

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus

## --- 移除重生点的temp数据 ---
scoreboard players reset @e[family=respawner] temp