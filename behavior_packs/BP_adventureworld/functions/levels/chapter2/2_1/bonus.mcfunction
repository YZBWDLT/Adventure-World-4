# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 211

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a2-1已完成！§r\n§f你已获得 §b[弓] §f！\n§7和药水供应不同，每一波开始之前你都能获得12根箭！\n§7试试尽量用弓箭射杀骷髅，有奇效哦！"}]}

## --- 打开入口与出口 ---
fill -74 20 58 -76 18 58 air
fill -69 18 64 -69 20 66 air

## --- 设置重生点 ---
tp @e[family=respawner] -75 18 65

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus
