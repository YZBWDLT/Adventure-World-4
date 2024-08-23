# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 421

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a4-2已完成！§r\n§f你已获得 §e[净化药水] §d[火焰弓] §f！\n§7手持弓可获取附魔"}]}

## --- 打开入口与出口 ---
fill -155 7 -3 -157 9 -3 air
fill -155 7 16 -157 9 16 air

## --- 设置重生点 ---
tp @e[family=respawner] -157 7 6

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus
