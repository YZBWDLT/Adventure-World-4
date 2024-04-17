# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 221

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a2-2已完成！§r\n§f你已获得 §b[铁护腿] §f！"}]}
clear @a leather_leggings

## --- 打开入口与出口 ---
fill -70 0 68 -70 3 70 air
fill -104 -17 69 -104 -15 67 air

## --- 设置重生点 ---
tp @e[family=respawner] -92 -17 67

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus

# --- 提示 ---
tellraw @a {"rawtext":[{"translate":"§a非常好！使用弓可以对强力的骷髅类怪物造成致命伤害。"}]}
