# 游戏失败

## 降级level记分板
scoreboard players set @e[name=level] background 434

## 传送到上一个关卡的重生点并重新设置重生点
tp @a -156 -12 14
spawnpoint @a -156 -12 14

## 打开入口与出口
fill -143 -31 7 -143 -29 5 minecraft:air
fill -117 -31 7 -117 -29 5 minecraft:air

## 清除标记时间的盔甲架和所有怪物
kill @e[family=monster]
kill @e[type=item]

## 调用所有关卡通用的游戏失败函数
function levels/all_levels/game_lose