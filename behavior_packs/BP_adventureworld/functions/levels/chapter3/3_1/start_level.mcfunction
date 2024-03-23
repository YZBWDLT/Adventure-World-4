# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=level] data 310

## --- 封闭入口与出口 ---
fill -199 -21 29 -197 -19 29 prismarine

## --- 设置重生点 ---
tp @e[family=respawner] -191 -20 39

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 2

# --- 设置两个临时常加载区域 ---
# 关卡结束后使用
tickingarea add -71 -16 57 -103 0 78 temp1
tickingarea add -122 14 35 -138 17 17 temp2
