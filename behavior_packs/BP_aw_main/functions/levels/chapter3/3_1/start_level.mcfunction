# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=gameId] data 310

## --- 封闭入口与出口 ---
fill -199 -21 29 -197 -19 29 prismarine

## --- 设置重生点 ---
tp @e[family=respawner] -191 -20 39

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 2

# --- 提示玩家 ---
tellraw @a {"rawtext":[{"translate":"§a试试使用一种主药水吧！请谨慎选择，每关你只能选择一种。"}]}
