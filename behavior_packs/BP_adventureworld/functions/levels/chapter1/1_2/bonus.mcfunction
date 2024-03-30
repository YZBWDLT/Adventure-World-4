# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] data 121

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a1-2已完成！§r\n§f你已获得 §a[治疗药水] §b[绳枪] §f！\n§a手机版玩家可以使用§f[虚拟准星]§a物品以在使用绳枪时启用准星，方便瞄准。"}]}

## --- 打开入口与出口 ---
fill -127 5 50 -125 7 50 air

## --- 设置重生点 ---
tp @e[family=respawner] -126 7 58

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus