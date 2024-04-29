# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
execute @e[name=isNetease,scores={data=0}] ~~~ scoreboard players set @e[name=gameId] data 731
execute @e[name=isNetease,scores={data=1}] ~~~ scoreboard players set @e[name=gameId] data 732

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a7-3已完成！§r"}]}

## --- 打开入口与出口 ---
fill -192 -18 96 -192 -16 98 air
fill -217 -18 98 -217 -16 100 air

## --- 设置重生点 ---
tp @e[family=respawner] -199 -17 94

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus