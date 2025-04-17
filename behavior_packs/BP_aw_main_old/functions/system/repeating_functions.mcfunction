# ===== 循环执行函数控制器 =====
# 循环执行需要的函数

# --- 关卡函数 ---
# 这些函数是地图关卡需要用到的循环型函数。
# 判断逻辑为：开始游戏/关卡外事宜 -> 游戏过程中 -> 游戏成功/失败判定
# [章节全局 [开始游戏]→[游戏过程]→[成功失败判定]]

## 进入房间检测器 | 该函数仅在关卡进度处于“未在游戏中”状态下执行
execute @e[name=levelCompleted,scores={data=!0}] ~~~ function system/level_controllers/start_level

## 时间线控制器 | 仅当时间线处于激活状态下执行。一般而言，“在游戏中”的关卡都会默认开启时间线，而“未在游戏中”时的时间线一般是关闭的。
execute @e[name=timeline,scores={active=1..}] ~~~ function system/level_controllers/timeline

## 对话控制器 | 仅当对话处于激活状态下执行。
execute @e[name=dialogue,scores={active=1..}] ~~~ function system/level_controllers/dialogue

## 怪物延迟生成控制器 | 仅当怪物延迟生成处于激活状态下执行。在每次生成怪物前，都需要先启用怪物延迟生成并设定延迟时长。 | 当出现无名的岩浆怪后，重新生成
execute @e[name=monsterSummonDelay,scores={active=1}] ~~~ function system/level_controllers/monster_summon_delay
execute @e[type=magma_cube,name=""] ~~~ function lib/monsters/summoner_controller

## 关卡与波潮完成检测器 | 该函数仅在关卡进度处于“正在游戏中”状态下执行
execute @e[name=levelCompleted,scores={data=0}] ~~~ function system/level_controllers/level_complete

## 关卡失败检测器 | 该函数仅在data.levelCompleted = 0时执行 | 该函数仅在data.maxPlayersAmount = 1..时执行（这样是为了防止出现部分命令不加载的情况发生）
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @e[name=maxPlayersAmount,scores={data=1..}] ~~~ function system/level_controllers/game_lose

# --- 开发者模式 ---

## 重生点判定器
execute @e[name=developerMode,scores={data=1}] ~~~ execute @e[name=tick,scores={time=14}] ~~~ execute @e[family=respawner] ~~~ particle aw:block_hint_gold ~~~
