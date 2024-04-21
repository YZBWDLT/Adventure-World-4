# ===== 关卡完成 =====

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 751

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§c最终关卡已完成！跳入最中间的洞，结束试炼！§r"}]}

## --- 设置重生点 ---
tp @e[family=respawner] -223 -48 45

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus

## --- 激活timeline时间线 ---
function lib/states/timeline/enable

# --- 重播放音乐 ---
function lib/music_player

# --- 移除haveNoBoss标记 ---
kill @e[name=haveNoBoss]
