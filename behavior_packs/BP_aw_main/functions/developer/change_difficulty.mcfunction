# ===== 更改难度设置 =====

scoreboard players add @e[name=difficultyAdder] data 1
scoreboard players set @e[name=difficultyAdder,scores={data=!-3..3}] data -3

tellraw @a {"rawtext":[{"translate":"已更改难度加和值为 %%s","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=difficultyAdder]"}}]}}]}
execute @a ~~~ playsound random.orb @s
