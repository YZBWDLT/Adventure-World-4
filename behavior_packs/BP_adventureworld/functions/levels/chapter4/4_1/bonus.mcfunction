# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 411

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a4-1已完成！§r\n§f你已获得 §d[重生药水] §e[脊柱之盾] §f！\n§7你刚刚获得了辅助型的药水！它们一般搭配主药水使用，注意合理分配它们哦！\n§7提示：手持物品时的§f☹§7代表该效果是短时的"}]}

## --- 打开入口与出口 ---
fill -170 17 -19 -170 19 -21 air

## --- 打开下一关 ---
fill -155 7 -3 -157 9 -3 air

## --- 设置重生点 ---
tp @e[family=respawner] -164 12 -17

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus
