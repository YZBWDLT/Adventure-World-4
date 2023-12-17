# ===== 每5秒执行一次的循环函数 =====

## --- 给予饱和效果 ---
effect @a saturation 1 10 true

## --- 第3章泡泡 ---
function system/bubble_controller

## --- 当玩家穿着皮革靴子时，补全耐久 ---
replaceitem entity @a[hasitem={item=leather_boots,location=slot.armor.feet}] slot.armor.feet 0 minecraft:leather_boots

## --- 当玩家在第二章的过道部分时，刷新发射器 ---
execute @a[scores={inLevelArea=20}] ~~~ function levels/chapter2/traps
