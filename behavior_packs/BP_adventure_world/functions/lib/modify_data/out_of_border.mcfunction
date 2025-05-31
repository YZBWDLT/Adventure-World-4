# ===== 玩家出界时 =====
# 当玩家在旁观模式出界时，阻止玩家出界并传送到本关标记处。
# 调用此方法时：需指定执行者和执行位置为出界旁观玩家（execute as @a[tag=spectator] at @s unless entity @s[x=?,y=?,z=?,dx=?,dy=?,dz=?]）。

tp @s @e[has_property={aw:marker_type="level",aw:level="this"}]
playsound mob.cat.meow @s ~~~ 1.00
tellraw @s {"rawtext":[{"translate":"§c不要出界哦~"}]}
