# ===== 玩家出界时 =====
# 当玩家在旁观模式出界时，阻止玩家出界并传送到本关标记处。
# 调用此方法时：需指定执行者和执行位置为出界旁观玩家（execute as @a[tag=spectator] at @s unless entity @s[x=?,y=?,z=?,dx=?,dy=?,dz=?]）。

# --- 提醒玩家不要出界 ---
# 仅当玩家不在上关标记附近时执行

## 播放标题
function aw/lib/modify_data/title
titleraw @s subtitle {"rawtext":[{"translate":"§c不要出界哦~"}]}

## 播放音效 | 这里使用outOfBorder标签标记出界玩家，以使音效控制器只对这些玩家生效，最后令音效控制器移除这个标签
tag @s add outOfBorder
function aw/lib/modify_data/states/sound/mob_cat_meow

# --- 传送玩家 ---
function aw/lib/level_pos_data/teleport_this_level
