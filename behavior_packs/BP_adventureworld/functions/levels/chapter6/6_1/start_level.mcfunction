# ===== 开始游戏 =====
# 对本关进行一定的初始化

## --- 设置level分数 ---
scoreboard players set @e[name=level] background 610

## --- 封闭入口与出口 ---
### 入口
fill -75 -31 -46 -77 -29 -46 pointed_dripstone["hanging":false]
fill -75 -29 -46 -75 -30 -46 pointed_dripstone["hanging":true]
fill -77 -29 -46 -77 -29 -46 pointed_dripstone["hanging":true,"dripstone_thickness":"merge"]
fill -75 -31 -45 -77 -29 -45 barrier[] keep
### 出口
fill -82 -31 -64 -82 -29 -62 pointed_dripstone["hanging":true]
fill -82 -31 -63 -82 -30 -63 pointed_dripstone["hanging":false]
fill -82 -31 -64 -82 -31 -64 pointed_dripstone["hanging":false,"dripstone_thickness":"merge"]
fill -83 -31 -62 -83 -29 -64 barrier[] keep

## --- 设置重生点 ---
## 设置到关卡内密闭的3*3空间内，以便死亡玩家旁观
spawnpoint @a -66 -30 -54

## --- 调用所有关卡通用的开始关卡函数 ---
function methods/all_levels/start_level

## --- 其他附加功能 ---
gamerule falldamage true
tellraw @a {"rawtext":[{"text":"§c注意，本关有摔落伤害！"}]}