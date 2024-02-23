# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 331

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a3-3已完成！§r\n§f你已获得 §a[治疗药水] §d[箭袋] §f！\n§7现在您的箭的上限数目已经提升至36根了！"}]}

## --- 打开入口与出口 ---
fill -162 -21 26 -164 -19 26 structure_void

## 开启下一关
fill -168 -15 22 -168 -13 24 structure_void

## --- 设置重生点 ---
tp @e[family=respawner] -173 -21 30

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus