# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 601

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -78 -31 -29
tp @e[family=respawner] -78 -31 -29

## --- 打开入口 ---
### 入口
fill -75 -31 -46 -77 -29 -46 pointed_dripstone["hanging":false]
fill -75 -29 -46 -75 -30 -46 pointed_dripstone["hanging":true]
fill -77 -29 -46 -77 -29 -46 pointed_dripstone["hanging":true,"dripstone_thickness":"merge"]

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose

gamerule falldamage false