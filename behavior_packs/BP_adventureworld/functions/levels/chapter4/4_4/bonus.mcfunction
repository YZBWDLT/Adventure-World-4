# ===== 关卡奖励 =====
# 关卡完成后执行

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a4-4已完成！\n§b+1 钻石胸甲，+1 生命提升药水 II\n§a[生命提升药水 I]§f已升级到§a[生命提升药水 II]§f"}]}

## --- 打开入口与出口 ---
fill -143 -31 7 -143 -29 5 air
fill -117 -31 7 -117 -29 5 air

## --- 设置重生点 ---
spawnpoint @a -130 -31 6

## 清除标记时间的盔甲架和所有怪物
kill @e[family=monster]
kill @e[type=item]

## 清除原来的盔甲并提示
clear @a aw:iron_chestplate
tellraw @a {"rawtext":[{"text":"§a已将您原来的铁胸甲清理，记得尽快换上更好的装备哦！"}]}

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus