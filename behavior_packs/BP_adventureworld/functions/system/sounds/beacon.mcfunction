# 信标音效

scoreboard players add @s time 1
execute @s[scores={time=2}] ~~~ execute @a ~~~ playsound beacon.power @s ~~~ 1 1 1
execute @s[scores={time=3}] ~~~ scoreboard players set @s active 0
execute @s[scores={time=3}] ~~~ scoreboard players set @s time 0