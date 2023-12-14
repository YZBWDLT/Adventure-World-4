# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 321

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a3-2已完成！§r\n§f你已获得 §a[治疗药水] §e[钻石靴子] §f！\n§7不要忘记手持钻石靴子获取附魔！"}]}
clear @a aw:iron_boots
clear @a leather_boots

## --- 打开入口与出口 ---
fill -171 -21 13 -173 -19 13 structure_void

## --- 打开下一关入口 ---
fill -162 -21 26 -164 -19 26 structure_void

## --- 设置重生点 ---
tp @e[family=respawner] -173 -21 30

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus
