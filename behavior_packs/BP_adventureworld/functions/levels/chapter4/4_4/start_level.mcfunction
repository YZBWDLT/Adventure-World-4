# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=gameId] data 440

## --- 封闭入口与出口 ---
fill -143 -31 7 -143 -29 5 ice
fill -117 -31 7 -117 -29 5 ice

## --- 设置重生点 ---
tp @e[family=respawner] -145 -23 6

## 初始化剩余时间数值
## temp.timeline = 关卡剩余时间 | temp2.timeline = 刷新怪物剩余时间
scoreboard players set @e[name=timeline] temp 180
scoreboard players random @e[name=timeline] temp2 3 10

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 标题 ---
function lib/title
titleraw @a subtitle {"rawtext":[{"translate":"§c4-4 | 随机位置生成随机怪物"}]}

## --- 生成守卫者 ---
summon guardian -138 -30 -2
summon guardian -122 -30 -2
summon guardian -122 -30 14
summon guardian -138 -30 14

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 1
scoreboard players set @e[name=wave] data 1

# --- 阻止本关以常规方式检测 ---
function lib/states/level_complete_delay/never_complete

# --- 提示 ---
tellraw @a {"rawtext":[{"translate":"§c本关怪物将在不同位置随机生成，守卫者不可击杀！坚持3分钟即可获胜！"}]}

# --- 播放音乐 ---
function lib/music_player
