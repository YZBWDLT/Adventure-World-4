# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 211

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a2-1已完成！§r\n§f你已获得 §b[弓] §f！"}]}

## --- 打开入口与出口 ---
fill -74 20 58 -76 18 58 air
fill -69 18 64 -69 20 66 air

## --- 设置重生点 ---
tp @e[family=respawner] -75 18 65

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus
