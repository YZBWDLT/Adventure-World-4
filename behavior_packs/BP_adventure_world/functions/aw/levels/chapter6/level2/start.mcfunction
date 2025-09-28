# ===== 开始游戏 =====
# 6-2 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 2
## 最大波数
scoreboard players set maxWave data 3

# --- 生成怪物 ---
function aw/levels/chapter6/level2/waves/wave_1

# --- 调用通用函数 ---
# 必须由初次进入的玩家执行
function aw/lib/events/levels/start_level

# --- 关卡特殊功能 ---
## 当玩家使用最大难度时，提示玩家
execute if score difficulty settings matches 4 run tellraw @a {"rawtext":[{"translate":"§c当心7级骷髅！！它们拥有极高的血量和一击必杀的伤害，但某些机制对它们仍然有效。"}]}
