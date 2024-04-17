# ===== 循环执行函数控制器 =====
# 循环执行需要的函数

# --- 地图底层函数 ---
# 这些函数是整个地图最底层的内容，因此优先于上层的【关卡函数】执行

## 游玩时间记录器
function system/time_controller

## 关卡ID拆分器 | 用于分别获取关卡ID的第一、二、三位
function system/gameid_seperator

## 重生判定控制器
function system/respawn_controller

## 防退出控制器
function system/antileave

## 音效控制器
## 仅当音效播放器处于激活状态下执行。
execute @e[name=soundPlayer,scores={active=!0}] ~~~ function system/sound_controller

## NPC对话 | 当强制视角对话正在启用时，不启用该命令
execute @e[name=dialogue,scores={active=!2}] ~~~ execute @e[type=aw:npc,family=interacted] ~~~ function system/npc_interact_tester

# --- 物品函数 ---
# 这些函数是部分物品的特殊功能。

## 绳枪判定器
function entities/hookshot/hookshot

## 装备检测器
function system/equipment_tester

## 箭上限函数 | 仅当箭上限检测启用状态下执行。
function system/item_limit/arrows

## 药水上限函数
## 每秒执行一次，仅当药水上限检测启用状态下执行。
execute @e[name=tick,scores={time=0}] ~~~ function system/item_limit/potions
function system/item_limit/potions2

## 物品上限函数
execute @e[name=tick,scores={time=0}] ~~~ function system/item_limit/items

# --- 关卡函数 ---
# 这些函数是地图关卡需要用到的循环型函数。
# 判断逻辑为：开始游戏/关卡外事宜 -> 游戏过程中 -> 游戏成功/失败判定
# [章节全局 [开始游戏]→[游戏过程]→[成功失败判定]]

## 章节事件控制器
function system/level_controllers/chapter_events

## 进入房间检测器
execute @e[name=levelCompleted,scores={data=!0}] ~~~ function system/level_controllers/start_level

## 时间线控制器 | 仅当时间线处于激活状态下执行。一般而言，“在游戏中”的关卡都会默认开启时间线，而“未在游戏中”时的时间线一般是关闭的。
execute @e[name=timeline,scores={active=1..}] ~~~ function system/level_controllers/timeline

## 对话控制器 | 仅当对话处于激活状态下执行。
execute @e[name=dialogue,scores={active=1..}] ~~~ function system/level_controllers/dialogue

## 怪物延迟生成控制器 | 仅当怪物延迟生成处于激活状态下执行。在每次生成怪物前，都需要先启用怪物延迟生成并设定延迟时长。 | 当出现无名的岩浆怪后，重新生成
execute @e[name=monsterSummonDelay,scores={active=1}] ~~~ function system/level_controllers/monster_summon_delay
execute @e[type=magma_cube,name=""] ~~~ function lib/monsters/summoner_controller

## 快捷栏标题控制器
function system/level_controllers/actionbar_title

## 关卡与波潮完成检测器 | 该函数仅在关卡进度处于“正在游戏中”状态下执行
execute @e[name=levelCompleted,scores={data=0}] ~~~ function system/level_controllers/level_complete

## 关卡失败检测器 | 该函数仅在关卡进度处于“正在游戏中”状态下执行
execute @e[name=levelCompleted,scores={data=0}] ~~~ function system/level_controllers/game_lose

# --- 开发者模式 ---

## 游戏模式切换器
execute @e[name=developerMode,scores={data=1}] ~~~ function system/gamemode_switcher

## 重生点判定器
execute @e[name=developerMode,scores={data=1}] ~~~ execute @e[name=tick,scores={time=14}] ~~~ execute @e[family=respawner] ~~~ particle aw:block_hint_gold ~~~
