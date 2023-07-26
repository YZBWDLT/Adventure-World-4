# 给予饱和效果

execute @e[name=tick,scores={time=1}] ~~~ scoreboard players add @e[name=saturationSecond] time 1
execute @s[scores={time=20}] ~~~ effect @a saturation 1 255 true
execute @s[scores={time=20..}] ~~~ scoreboard players remove @s time 20