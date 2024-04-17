# ===== 更改难度设置 =====

scoreboard players add @e[name=difficultyAdder] settings 1
scoreboard players set @e[name=difficultyAdder,scores={settings=!-3..3}] settings -3

tellraw @a {"rawtext":[{"translate":"已更改难度加和值为 %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=difficultyAdder]"}}]}}]}
execute @a ~~~ playsound random.orb @s
