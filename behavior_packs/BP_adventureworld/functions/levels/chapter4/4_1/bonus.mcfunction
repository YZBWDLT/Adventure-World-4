# ===== 关卡奖励 =====
# 关卡完成后执行

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a4-1已完成！\n§b+1 火矢 附魔弓，+1 生命药水 II\n§a[生命药水 II]§f上限+1，当前为2。"}]}

## --- 打开入口与出口 ---
fill -170 17 -19 -170 19 -21 air

## 打开4-2
fill -155 7 -3 -157 9 -3 air

## 清除原来的弓并提示
clear @a minecraft:bow
tellraw @a {"rawtext":[{"text":"§a已将您原来的弓替换为火弓！"}]}

## --- 设置重生点 ---
spawnpoint @a -164 12 -17

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus