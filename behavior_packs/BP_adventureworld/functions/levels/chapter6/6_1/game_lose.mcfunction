# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=level] background 600

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -78 -31 -29
tp @e[family=respawner] -78 -31 -29

## --- 打开入口与出口 ---
fill -75 -31 -46 -77 -29 -45 air[] replace barrier[]
fill -75 -31 -46 -77 -29 -45 air[] replace pointed_dripstone[]

fill -82 -29 -62 -83 -31 -64 air[] replace barrier[]
fill -82 -29 -62 -83 -31 -64 air[] replace pointed_dripstone[]

## --- 调用所有关卡通用的游戏失败函数 ---
function methods/all_levels/game_lose

gamerule falldamage false