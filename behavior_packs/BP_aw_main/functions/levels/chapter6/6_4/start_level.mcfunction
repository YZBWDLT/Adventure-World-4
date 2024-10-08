# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=gameId] data 640

## --- 封闭入口与出口 ---
fill -76 -39 20 -74 -37 20 deepslate_bricks

## --- 设置重生点 ---
tp @e[family=respawner] -75 -29 35

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level
function lib/states/timeline/enable_without_flowing

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 1

# --- 提示玩家 ---
tellraw @a {"rawtext":[{"translate":"§a本关击杀BOSS即可获胜！"}]}

# --- 播放音乐 ---
function lib/music_player

# --- 4.1版本为新包备用 ---
scoreboard objectives add bossStage dummy "Boss阶段"
