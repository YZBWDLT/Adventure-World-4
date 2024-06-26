# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 311

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a3-1已完成！§r\n§f你已获得 §a[治疗药水] §e[钻石头盔] §f！\n§a非常好！灵活运用主药水可以帮助你更轻松地通过后面的关卡。\n§c请手持一次钻石头盔以获取附魔。"}]}
clear @a aw:iron_helmet

## --- 打开入口与出口 ---
fill -199 -21 29 -197 -19 29 air

## --- 打开下一关入口 ---
fill -173 -21 13 -171 -19 13 structure_void

## --- 设置重生点 ---
tp @e[family=respawner] -188 -21 29

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus

scoreboard players set @e[name=timeline] active 3
scoreboard players set @e[name=timeline] time 0