# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] data 740

## --- 封闭入口与出口 ---
fill -223 -18 98 -223 -16 100 nether_brick
fill -235 -30 97 -233 -30 99 stained_glass["color":"red"]

## --- 设置重生点 ---
tp @e[family=respawner] -248 -5 104

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 5

## --- 添加岩浆 ---
fill -224 -27 111 -244 -29 85 lava[] keep

# --- 重新开启怪物检测 ---
# 因为关卡有岩浆怪，因此启用延迟
function lib/states/level_complete_delay/enable_60ticks

# --- 播放音乐 ---
function lib/music_player
