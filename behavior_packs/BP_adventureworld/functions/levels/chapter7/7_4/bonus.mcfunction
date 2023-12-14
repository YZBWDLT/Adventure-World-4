# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 741

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a7-4已完成！§r"}]}

## --- 打开入口与出口 ---
fill -223 -18 98 -223 -16 100 air
fill -235 -30 97 -233 -30 99 structure_void

## --- 设置重生点 ---
tp @e[family=respawner] -225 -18 99

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 移除重生点的temp数据 ---
scoreboard players reset @e[family=respawner] temp

## --- 激活timeline时间线 ---
## 当background.level=741时，会触发对应单独的时间线设定
function methods/timeline/enable