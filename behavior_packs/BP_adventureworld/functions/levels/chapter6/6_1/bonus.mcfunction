# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 611

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a6-1已完成！§r\n§f你已获得 §e[力量弓] §f！\n§7手持弓可获取附魔"}]}

## --- 打开入口与出口 ---
fill -75 -31 -46 -77 -29 -45 air[] replace barrier[]
fill -75 -31 -46 -77 -29 -45 air[] replace pointed_dripstone[]

fill -82 -29 -62 -83 -31 -64 air[] replace barrier[]
fill -82 -29 -62 -83 -31 -64 air[] replace pointed_dripstone[]

## --- 设置重生点 ---
tp @e[family=respawner] -77 -31 -64

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 解除摔落伤害 ---
gamerule falldamage false