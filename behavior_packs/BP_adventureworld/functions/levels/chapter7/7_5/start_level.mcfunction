# ===== 关卡开始 =====

# --- 设置level ---
scoreboard players set @e[name=gameId] data 750

# --- 设置重生点 ---
tp @e[family=respawner] -237 -29 51

## --- 调用所有关卡通用的开始关卡函数 ---
## 同时更改怪物生成延迟
function lib/all_levels/start_level
function lib/states/monster_summon_delay/enable_100ticks

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 2

# --- 设置玩家从高空跌落 ---
tp @a -225 15 44

# --- 加载初始结构 ---
structure load 7_5_phase1 -246 -54 23

# --- 启用时间线 ---
function lib/states/timeline/enable

# --- 取消怪物检测 ---
function lib/states/level_complete_delay/never_complete

# --- 给予失明 ---
effect @a blindness 4 0 true

# --- 初始化BOSS技能倒计时 ---
scoreboard players set @e[name=timeline] temp -1
scoreboard players set @e[name=timeline] temp2 -1

#<!> 
setblock -215 -47 47 air