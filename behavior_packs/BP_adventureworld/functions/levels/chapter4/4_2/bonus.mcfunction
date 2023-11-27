# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 421

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a4-2已完成！\n§b+1 箭袋\n§a[抗性提升药水 I]§f已升级到§a[抗性提升药水 II]§f！"}]}

## --- 打开入口与出口 ---
fill -155 7 -3 -157 9 -3 air
fill -155 7 16 -157 9 16 air

## --- 设置重生点 ---
tp @e[family=respawner] -157 7 6

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 给予奖励 ---
give @a aw:quiver 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
