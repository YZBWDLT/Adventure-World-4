# ===== 南瓜汁对话 =====

### 多人情况
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁为比他 PVE 更强的玩家而骄傲。）"}]}
### 单人C~S
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=60..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁为比他 PVE 更强的玩家而骄傲。）"}]}
### 单人F~D
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=0..59}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（南瓜汁终于找到了和他 PVE 水平相当的玩家，并拍了拍以示安慰。）"}]}
### 单人F-
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a南瓜汁（PumpkinJui）： §7（一个秘密，南瓜汁喜欢在测试时用玉米加农炮轰炸伽刚特尔。）"}]}