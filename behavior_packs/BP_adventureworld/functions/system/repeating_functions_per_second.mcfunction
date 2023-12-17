# ===== 每秒执行一次的循环函数控制器 ===

## --- 当未进行游戏时，清除summoner标记 ---
execute @e[name=level,scores={temp3=1}] ~~~ kill @e[family=summoner]

## --- 虚拟准星 ---
execute @a[scores={crosshair=1},hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] ~~~ function methods/virtual_crosshair

## --- 物品&药水上限检测 ---
function system/item_limit/items
function system/item_limit/potions
