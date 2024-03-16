# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] data 131

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§l§a1-3已完成！§r\n§f你已获得 §a[治疗药水] §b[铁头盔] §f！"}]}
clear @a leather_helmet

## --- 打开入口与出口 ---
fill -139 11 34 -139 13 32 air
fill -121 18 25 -121 20 27 air

## --- 设置重生点 ---
tp @e[family=respawner] -134 11 27

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus