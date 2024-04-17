# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 611

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a6-1已完成！§r\n§f你已获得 §e[力量弓] §f！\n§7手持弓可获取附魔"}]}

## --- 打开入口与出口 ---
### 入口
fill -75 -31 -46 -77 -29 -46 pointed_dripstone["hanging":false]
fill -75 -29 -46 -75 -30 -46 pointed_dripstone["hanging":true]
fill -77 -29 -46 -77 -29 -46 pointed_dripstone["hanging":true,"dripstone_thickness":"merge"]
### 出口
fill -82 -31 -64 -82 -29 -62 pointed_dripstone["hanging":true]
fill -82 -31 -63 -82 -30 -63 pointed_dripstone["hanging":false]
fill -82 -31 -64 -82 -31 -64 pointed_dripstone["hanging":false,"dripstone_thickness":"merge"]

## --- 设置重生点 ---
tp @e[family=respawner] -77 -31 -64

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus

## --- 解除摔落伤害 ---
gamerule falldamage false