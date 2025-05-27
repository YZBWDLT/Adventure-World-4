# ===== 星辰对话 =====

### 多人情况
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7期待你通关最高难度的那一刻。"}]}
### 单人E~S、非难度4
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=40..}] ~~~ execute @e[name=difficulty,scores={data=!4}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7期待你通关最高难度的那一刻。"}]}
### 单人E~S、难度4、非一命
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=40..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ tellraw @a[scores={deathCount=!0}] {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7要不要挑战一下一命通关难度4呢？"}]}
### 单人E~S、难度4、一命
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=40..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ tellraw @a[scores={deathCount=0}] {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7你真的做到了......（震惊"}]}
### 单人F
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=0..39}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7能坚持玩完已经很不错了呢，继续加油吧！"}]}
### 单人F-
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a星辰（xc13599305）： §7看来还得多练习一下呢~"}]}
