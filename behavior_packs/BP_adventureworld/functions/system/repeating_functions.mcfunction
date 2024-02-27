# ===== 循环执行函数控制器 =====
# 循环执行需要的函数

# --- 地图底层函数 ---
# 这些函数是整个地图最底层的内容，因此优先于上层的【关卡函数】执行

## 游玩时间记录器
function system/time_played_recorder

## 重生判定控制器
function system/respawn_controller

## 防退出控制器
function system/antileave

## 音效控制器
## 仅当音效播放器处于激活状态下执行。
execute @e[name=soundPlayer,scores={active=!0}] ~~~ function system/sound_player

## 饱和效果
## 每秒执行一次。
execute @e[name=tick,scores={time=0}] ~~~ effect @a saturation 1 10 true

# --- 物品函数 ---
# 这些函数是部分物品的特殊功能。

## 绳枪判定器
function entities/hookshot/hookshot

## 虚拟准星
## 每秒执行一次，当玩家手持绳枪时，由其调用对应函数。
execute @e[name=tick,scores={time=0}] ~~~ execute @a[scores={crosshair=1},hasitem={item=aw:hookshot,location=slot.weapon.mainhand}] ~~~ function lib/virtual_crosshair

## 装备检测器
function system/equipment_tester

## 箭上限函数
## 仅当箭上限检测启用状态下执行。
execute @e[name=arrowLimitTest,scores={settings=1}] ~~~ function system/item_limit/arrows

## 药水上限函数
## 每秒执行一次，仅当药水上限检测启用状态下执行。
execute @e[name=tick,scores={time=0}] ~~~ execute @e[name=potionLimitTest,scores={settings=1}] ~~~ function system/item_limit/potions
function system/item_limit/potions2

## 物品上限函数
execute @e[name=tick,scores={time=0}] ~~~ execute @e[name=itemLimitTest,scores={settings=1}] ~~~ function system/item_limit/items

# --- 关卡函数 ---
# 这些函数是地图关卡需要用到的循环型函数。
# 判断逻辑为：开始游戏/关卡外事宜 -> 游戏过程中 -> 游戏成功/失败判定

## 进入房间检测器
## 该函数仅在关卡进度处于“未在游戏中”状态下执行，因此需要获取当前关卡状态。
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/3_digit_seperator
## 当处于“未在游戏中”状态下时，每秒一次地清除怪物生成器
execute @e[name=level,scores={temp3=1}] ~~~ execute @e[name=tick,scores={time=0}] ~~~ kill @e[family=summoner]
execute @e[name=level,scores={temp3=1}] ~~~ function system/level_controllers/start_level

## 粒子控制器
##<!> 每5秒执行1次。需要更新。 | 别吐槽我为什么写个5秒执行1次写的这么烂，我只是不想再额外搞个变量记录了而已，能看懂就行 =P
execute @e[name=playedSecond,scores={time=0..59,time=!1..4,time=!6..9,time=!11..14,time=!16..19,time=!21..24,time=!26..29,time=!31..34,time=!36..39,time=!41..44,time=!46..49,time=!51..54,time=!56..59}] ~~~ function system/level_controllers/particles

## 第二章陷阱更新
## 每10秒执行一次。当玩家处于第二章过道区域时执行。
execute @e[name=playedSecond,scores={time=0..59,time=!1..9,time=!11..19,time=!21..29,time=!31..39,time=!41..49,time=!51..59}] ~~~ execute @a ~~~ function lib/get_entity_location
execute @e[name=playedSecond,scores={time=0..59,time=!1..9,time=!11..19,time=!21..29,time=!31..39,time=!41..49,time=!51..59}] ~~~ execute @a[scores={inLevelArea=20}] ~~~ function levels/chapter2/traps

## 时间线控制器
## 仅当时间线处于激活状态下执行。一般而言，“在游戏中”的关卡都会默认开启时间线，而“未在游戏中”时的时间线一般是关闭的。
##<!> 需要测试玩家重新进入时是否会出现问题 | 原文【加上exe @e[type=player] ~是为了防止玩家重新进入时因为实体未加载而错误的判定为关卡失败从而卡关的问题】
execute @e[name=timeline,scores={active=1..}] ~~~ function system/level_controllers/timeline

## 怪物延迟生成控制器
## 仅当怪物延迟生成处于激活状态下执行。在每次生成怪物前，都需要先启用怪物延迟生成并设定延迟时长。
execute @e[name=monsterSummonDelay,scores={active=1}] ~~~ function system/level_controllers/monster_summon_delay

## 快捷栏标题控制器
function system/level_controllers/actionbar_title

## 关卡与波潮完成检测器
## 该函数仅在关卡进度处于“正在游戏中”状态下执行，因此需要获取当前关卡状态。
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/3_digit_seperator
execute @e[name=level,scores={temp3=0}] ~~~ function system/level_controllers/level_complete

## 关卡失败检测器
## 该函数仅在关卡进度处于“正在游戏中”状态下执行，因此需要获取当前关卡状态。
execute @e[name=level] ~~~ scoreboard players operation @s temp = @s data
execute @e[name=level] ~~~ function lib/3_digit_seperator
execute @e[name=level,scores={temp3=0}] ~~~ function system/level_controllers/game_lose

# --- 开发者模式 ---

## 游戏模式切换器
execute @e[name=developerMode,scores={settings=1}] ~~~ function system/gamemode_switcher
