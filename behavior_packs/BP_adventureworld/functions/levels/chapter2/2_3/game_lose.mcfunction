# ===== 游戏失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=gameId] data 221

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -92 -17 70
tp @e[family=respawner] -92 -17 70

## --- 打开入口 ---
fill -141 -21 60 -141 -19 62 air

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose

# --- 播放音乐 ---
function lib/music_player
