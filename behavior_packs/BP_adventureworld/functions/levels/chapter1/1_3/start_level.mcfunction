# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level ---
scoreboard players set @e[name=gameId] data 130

## --- 封闭入口与出口 ---
## 入口
fill -139 11 34 -139 13 32 red_sandstone["sand_stone_type":"cut"]
fill -139 12 33 -139 12 33 red_sandstone["sand_stone_type":"heiroglyphs"]
## 出口
fill -121 18 25 -121 20 27 red_sandstone["sand_stone_type":"cut"]
fill -121 19 26 -121 19 26 red_sandstone["sand_stone_type":"heiroglyphs"]

## --- 设置重生点 ---
tp @e[family=respawner] -141 18 26

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 2
