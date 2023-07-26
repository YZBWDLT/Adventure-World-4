# 循环执行函数控制器
# -----原理-----
# 循环执行需要的函数

## --- 上限函数 ---
## 箭上限函数
execute @a[hasitem={item=arrow},c=1] ~~~ function system/arrow_limit
## 药水上限函数
execute @e[name=level,scores={stats=100..}] ~~~ function system/potion_limit

## --- 遍历器函数 ---
## 奖励遍历器
execute @e[name=bonusTraversing,scores={active=1}] ~~~ function system/bonus_traverser
## 箭补充遍历器
execute @e[name=arrowTraversing,scores={active=1}] ~~~ execute @a[c=1,hasitem={item=bow}] ~~~ function system/arrow_traverser
## 药水遍历器
execute @e[name=potionTraversing,scores={active=1}] ~~~ function system/potion_traverser

## --- 开幕函数 ---
## 开始游戏前检测器
execute @e[name=readyToStart] ~~~ function system/start_game_tester
## 开幕时
execute @e[name=gameStartingTick,scores={active=1}] ~~~ function levels/game_starting

## --- 关卡函数 ---
## 进入房间检测器
execute @a[tag=!playing,c=1] ~~~ function levels/system/into_level_tester
## 各关关卡检测器 - 加上exe @e[type=player] ~是为了防止玩家重新进入时因为实体未加载而错误的判定为关卡失败从而卡关的问题
execute @e[type=player,c=1] ~~~ execute @e[name=levelTesting,scores={active=1}] ~~~ function system/level_tester_controller
## 快捷栏标题控制器
function system/actionbar_title_controller

## --- 其他 ---
## 实体数目检测器
function system/entity_amount_tester
## 绳枪判定器
function system/hookshot_judger
## 游玩时间记录器
function system/time_played_recorder
## 音效控制器
function system/sounds_controller
## 永久饱和
execute @e[name=saturationSecond] ~~~ function system/always_saturation
## 虚拟准星
execute @a[scores={crosshair=1},hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] ~~~ titleraw @s times 0 3 0
execute @a[scores={crosshair=1},hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] ~~~ titleraw @s title {"rawtext":[{"text":"§1"}]}
execute @a[scores={crosshair=1},hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] ~~~ titleraw @s subtitle {"rawtext":[{"text":"+\n\n\n"}]}
## 第3章泡泡（每1秒执行一次）
execute @e[name=tick,scores={time=0}] ~~~ function system/bubble_controller
##（开发者模式）
execute @e[name=developerMode,scores={active=1}] ~~~ function system/gamemode_switcher