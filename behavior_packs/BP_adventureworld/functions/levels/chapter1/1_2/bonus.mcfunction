# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 121

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a1-2已完成！§r\n§f你已获得 §a[治疗药水] §b[绳枪] §f！\n§7绳枪可右键（手机版长按）使用，发射的绳枪打到木板上会将你传送到绳枪的位置！\n§7如果您在手机上没有启用十字准星，你可以使用（右键，手机版长按） §f[启用准星] §7来在您手持绳枪时启用虚拟准星！"}]}

## --- 打开入口与出口 ---
fill -127 5 50 -125 7 50 air

## --- 设置重生点 ---
tp @e[family=respawner] -126 7 58

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus