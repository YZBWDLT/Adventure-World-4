# ===== 关卡奖励 =====
# 关卡完成后执行

## --- 设置level分值 ---
scoreboard players set @e[name=gameId] data 231

## --- tellraw提示 ---
tellraw @a {"rawtext":[{"text":"§l§a2-3已完成！§r\n§f你已获得 §b[生长药水] [亢奋药水] [神龟药水] [铁胸甲] §f！"}]}
clear @a leather_chestplate

## --- 打开入口与出口 ---
fill -141 -21 60 -141 -19 62 air
fill -167 -21 60 -167 -19 62 air

## --- 设置重生点 ---
tp @e[family=respawner] -154 -21 61

## --- 调用所有关卡通用奖励功能 ---
function lib/all_levels/bonus

# --- 播放音乐 ---
function lib/music_player
