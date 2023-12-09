# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 311

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a3-1已完成！\n§b+1 钻石头盔\n§a[生命药水 I]§f上限+1，当前为3。"}]}

## --- 打开入口与出口 ---
fill -199 -21 29 -197 -19 29 air

## --- 打开下一关入口 ---
fill -173 -21 13 -171 -19 13 minecraft:structure_void

## --- 设置重生点 ---
tp @e[family=respawner] -188 -21 29

## --- 调用所有关卡通用奖励功能 ---
clear @a aw:iron_helmet
scoreboard players set @a isHoldingHelmet 0
function methods/all_levels/bonus
