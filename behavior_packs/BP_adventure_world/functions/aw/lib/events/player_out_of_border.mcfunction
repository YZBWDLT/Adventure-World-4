# ===== 玩家出界时 =====
# 当玩家在旁观模式出界时，阻止玩家出界并传送到本关标记处。
# 调用此方法时：需指定执行者为出界旁观存活玩家，执行位置为本关重生点位置（execute as @a[scores={deathState=0,spectator=!0}] at @s unless entity @s[x=?,y=?,z=?,dx=?,dy=?,dz=?] positioned (本关重生点)）。

# --- 提醒玩家不要出界 ---
# 仅当玩家不在上关标记附近时执行

## 播放标题
function aw/lib/events/show_empty_title
titleraw @s subtitle {"rawtext":[{"translate":"§c不要出界哦~"}]}

## 播放音效 | 这里使用outOfBorder标签标记出界玩家，以使音效控制器只对这些玩家生效，最后令音效控制器移除这个标签
tag @s add outOfBorder
function aw/lib/modify_data/sound/mob_cat_meow

# --- 传送玩家 ---
tp @s ~~~
