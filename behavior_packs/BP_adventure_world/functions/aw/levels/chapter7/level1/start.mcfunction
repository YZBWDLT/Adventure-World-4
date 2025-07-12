# ===== 开始游戏 =====
# 7-1 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 1
## 最大波数
scoreboard players set maxWave data 3

# --- 封闭关卡 ---
fill -150 -18 102 -150 -16 100 nether_brick

# --- 生成怪物 ---
function aw/levels/chapter7/level1/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行

## 禁止在本关传送玩家
scoreboard players set allowTpPlayerWhenStart data 0
## 禁止时间流逝 | 以防在过剧情时被误判为正处于与试炼外的对话
scoreboard players set timeLapse data 0

function aw/lib/modify_data/levels/start_level

# --- 关卡特殊功能 ---
## 设置重生点
spawnpoint @a -119 -16 103
