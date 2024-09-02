# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 111

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a1-1已完成！§r\n§f你已获得 §a[治疗药水] §b[铁靴子] §f！\n§7皮革靴子已自动卸下。"}]}
clear @a leather_boots
### 自动装备铁靴子
replaceitem entity @a slot.armor.feet 0 aw:iron_boots 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

## --- 打开入口与出口 ---
fill -118 1 14 -116 3 14 air
fill -118 1 32 -116 3 32 air

## --- 设置重生点 ---
tp @e[family=respawner] -117 1 30

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus