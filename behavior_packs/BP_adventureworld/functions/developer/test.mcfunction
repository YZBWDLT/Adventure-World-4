scoreboard players set @a temp -114
execute @a ~~~ function methods/3_digit_seperator
tellraw @a {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"score":{"objective":"temp","name":"@s"}},{"score":{"objective":"temp2","name":"@s"}},{"score":{"objective":"temp3","name":"@s"}}]}}]}