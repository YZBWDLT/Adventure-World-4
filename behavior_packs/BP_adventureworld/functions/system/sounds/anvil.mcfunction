# 铁砧音效
scoreboard players add @s time 1
execute @s[scores={time=2}] ~~~ execute @a ~~~ playsound random.anvil_break @s ~~~ 1 0.75 1
execute @s[scores={time=3}] ~~~ scoreboard players set @s active 0
execute @s[scores={time=3}] ~~~ scoreboard players set @s time 0