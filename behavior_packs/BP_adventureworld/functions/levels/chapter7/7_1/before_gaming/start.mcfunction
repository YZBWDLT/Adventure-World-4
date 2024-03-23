# ===== 旷野之剑动画 7-1部分初始化 =====

# --- 更改关卡ID ---
scoreboard players set @e[name=level] data 710

# --- 封闭7-1的出口 ---
fill -150 -18 102 -150 -16 100 nether_brick

# --- 传送玩家和重生点 ---
tp @a -120 -17 105
tp @e[family=respawner] -120 -17 105

# --- 重置时间线和剧情线 ---
function lib/states/timeline/enable
function lib/states/dialogue/enable

# --- 关闭怪物检测，防止判定为立刻通关 ---
function lib/states/level_complete_delay/never_complete
