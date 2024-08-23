# ===== 关卡失败 =====

## --- 降级level记分板 ---
scoreboard players set @e[name=gameId] data 741

## --- 传送到上一个关卡的重生点并重新设置重生点 ---
tp @a -225 -18 99
tp @e[family=respawner] -225 -18 99

## --- 调用所有关卡通用的游戏失败函数 ---
function lib/all_levels/game_lose

# --- 播放音乐 ---
function lib/music_player

# --- 启用7-4的after时间线 ---
function lib/states/timeline/enable_without_flowing

# --- 移除haveNoBoss标记 ---
kill @e[name=haveNoBoss]

# --- 移除掩体 ---
fill -238 -45 31 -212 -45 57 air [] destroy
