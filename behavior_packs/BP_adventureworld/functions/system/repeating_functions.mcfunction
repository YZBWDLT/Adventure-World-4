# ===== 循环执行函数控制器 =====
# 循环执行需要的函数

## --- 初始化型函数 ---
## 将函数放在这里以代表优先级高于其它任何函数执行，一般是某些函数的前置执行函数

## 游玩时间记录器
function system/time_played_recorder


## --- 其他循环执行函数 ---
## 每秒执行的函数
execute @e[name=tick,scores={time=0}] ~~~ function system/repeating_functions_per_second

## --- 上限函数 ---
## 箭上限函数
function system/item_limit/arrows
## 药水上限函数
execute @e[name=level,scores={background=100..}] ~~~ function system/item_limit/potions

## --- 关卡函数 ---
## 进入房间检测器
execute @a[scores={isAlive=2},c=1] ~~~ function system/level_controllers/start_level
## 各关关卡检测器 - 加上exe @e[type=player] ~是为了防止玩家重新进入时因为实体未加载而错误的判定为关卡失败从而卡关的问题
execute @e[type=player,c=1] ~~~ execute @e[name=timeline,scores={active=1..}] ~~~ function system/level_controllers/timeline
## 快捷栏标题控制器
function system/level_controllers/actionbar_title

## --- 其他 ---

### 获取background.level值并分别读取百位数、十位数、个位数到temp.level，temp2.level和temp3.level上
scoreboard players operation @e[name=level] temp = @e[name=level] background
execute @e[name=level] ~~~ function methods/3_digit_seperator
### 获取玩家的位置
function system/level_area_tester

## 绳枪判定器
function methods/get_entity_amount
function system/hookshot_judger

## 音效控制器
function system/sound_player
## 装备检测器
execute @e[name=level,scores={background=311..}] ~~~ function system/equipment_tester
## 虚拟准星
execute @a[scores={crosshair=1},hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] ~~~ function methods/virtual_crosshair

## --- 开发者模式 ---
## 游戏模式切换器
execute @e[name=developerMode,scores={settings=1}] ~~~ function system/gamemode_switcher
