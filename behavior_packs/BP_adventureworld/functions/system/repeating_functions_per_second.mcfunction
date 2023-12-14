# ===== 每秒执行一次的循环函数控制器 ===

## --- 给予饱和效果 ---
effect @a saturation 1 10 true

## --- 第3章泡泡 ---
function system/bubble_controller

## --- 当玩家穿着皮革靴子时，补全耐久 ---
replaceitem entity @a[hasitem={item=leather_boots,location=slot.armor.feet}] slot.armor.feet 0 minecraft:leather_boots

## --- 当未进行游戏时，清除summoner标记 ---
execute @e[name=level,scores={temp3=1}] ~~~ kill @e[family=summoner]

## --- 虚拟准星 ---
execute @a[scores={crosshair=1},hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] ~~~ function methods/virtual_crosshair

## --- 物品&药水上限检测 ---
function system/item_limit/items
function system/item_limit/potions