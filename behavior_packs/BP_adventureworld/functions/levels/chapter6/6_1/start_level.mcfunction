# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level分数 ---
scoreboard players set @e[name=gameId] data 610

## --- 封闭入口与出口 ---
### 入口
fill -75 -31 -46 -77 -29 -46 dripstone_block
### 出口
fill -82 -31 -62 -82 -29 -64 dripstone_block

## --- 设置重生点 ---
tp @e[family=respawner] -66 -30 -54

## --- 调用所有关卡通用的开始关卡函数 ---
function lib/all_levels/start_level

## --- 其他附加功能 ---
gamerule falldamage true
tellraw @a {"rawtext":[{"text":"§c注意，本关有摔落伤害！"}]}

## --- 设置本关最大波数 ---
scoreboard players set @e[name=maxWave] data 2

# --- 提示玩家 ---
tellraw @a {"rawtext":[{"translate":"§a当心骷髅敢死队！它们非常脆弱，但拥有非常高的近战伤害，务必要优先解决！"}]}
