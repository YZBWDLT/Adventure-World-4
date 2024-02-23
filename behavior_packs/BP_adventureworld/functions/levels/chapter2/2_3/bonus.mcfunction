# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 231

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a2-3已完成！§r\n§f你已获得 §b[生长药水] [亢奋药水] [神龟药水] [铁胸甲] §f！\n§7你刚刚获得了3种新药水！它们可以为你提供很强力的buff，但注意它们也有副作用，并且每关只能用1种药水，要谨慎行事！"}]}
clear @a leather_chestplate

## --- 打开入口与出口 ---
fill -141 -21 60 -141 -19 62 air
fill -167 -21 60 -167 -19 62 air

## --- 设置重生点 ---
tp @e[family=respawner] -154 -21 61

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus
