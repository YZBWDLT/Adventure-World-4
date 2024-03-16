# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] data 441

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a4-4已完成！§r\n§f你已获得 §e[钻石胸甲] §f！"}]}
clear @a aw:iron_chestplate

## --- 打开入口与出口 ---
fill -143 -31 7 -143 -29 5 air
fill -117 -31 7 -117 -29 5 air

## --- 设置重生点 ---
tp @e[family=respawner] -130 -31 6

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus

## --- 清除所有怪物 ---
kill @e[family=monster]
kill @e[type=item]

## --- 设置当前完成波数为2 ---
scoreboard players set @e[name=wave] data 2

# --- 关卡结束或失败后，回归正常关卡完成检测 ---
function lib/level_complete_delay/disable