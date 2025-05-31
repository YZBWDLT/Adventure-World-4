# ===== 玩家出界时 =====
# 当玩家在旁观模式出界时，阻止玩家出界并传送到本关标记处。
# 调用此方法时：需指定执行者和执行位置为出界旁观玩家（execute as @a[tag=spectator] at @s unless entity @s[x=?,y=?,z=?,dx=?,dy=?,dz=?]）。

# --- 提醒玩家不要出界 ---
# 仅当玩家不在上关标记附近时执行
execute unless entity @e[has_property={aw:marker_type="level",aw:level="prev"},r=2] run tag @s add outOfBorder
tellraw @s[tag=outOfBorder] {"rawtext":[{"translate":"§c不要出界哦~"}]}
function lib/modify_data/states/sound/mob_cat_meow

# --- 传送玩家 ---
tp @s @e[has_property={aw:marker_type="level",aw:level="this"}]
