# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=level] background 641

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§a6-4已完成！\n§a[力量药水 I]§f已升级到§a[力量药水 II]§f"}]}

## --- 打开入口与出口 ---
fill -76 -39 20 -74 -37 20 structure_void

## --- 设置重生点 ---
tp @e[family=respawner] -75 -38 30

## --- 清除残余岩浆 ---
fill -89 -40 49 -61 -39 21 air[] replace lava[]
fill -89 -40 49 -61 -39 21 air[] replace flowing_lava[]

## --- 调用所有关卡通用奖励功能 ---
function methods/all_levels/bonus

## --- 将旷野之剑动画的时间线数据初始化 ---
function methods/timeline/enable