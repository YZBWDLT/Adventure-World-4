# ===== 帕对话 =====

### 多人、非一命
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=allFailedTimes,scores={data=!0}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7和朋友玩的开心么？希望你们的友谊可以一直持续下去~ awa"}]}
### 多人、一命
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=allFailedTimes,scores={data=0}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7你们配合的很默契诶，厉害！"}]}
### 单人、F-
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=-1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7我把这张地图单人通关1、2级的难度划分为下级，3级为中下级，4级才为中上级。虽然难度没有达到我认为的上级的水准，但这于小白来说也许还是很难，不过多练练总能打出来的，所以下次试试不开创造吧，加油！"}]}
### 单人、F~、难度4、非一命
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=score,scores={data=!-1}] ~~~ tellraw @a[scores={deathCount=!0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7你的技术已经超过很多人了，要不要试一下0死亡嘛嘿嘿~~~"}]}
### 单人、F~、难度4、一命
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=score,scores={data=!-1}] ~~~ tellraw @a[scores={deathCount=0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7能看到这段对话的人应该很少吧（？）厉害哒！相信你已经可以秒杀绝大部分的pve地图了awa（在7-5出来之前我甚至还设置了四级难度一命无药通关的特殊对话，可是这个用手机打出来非常难，所以放弃了qwq）"}]}
### 单人、F~D、难度1~3
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..3}] ~~~ execute @e[name=score,scores={data=0..59}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7不必灰心，游戏就是为了开心嘛，如果嫌弃自己菜的话，多练一练就好啦，相信你也可以成为大佬的，加油！"}]}
### 单人、C~S、难度1、非一命
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=score,scores={data=60..}] ~~~ tellraw @a[scores={deathCount=!0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7恭喜你通过此次试炼！可以的话尝试考虑更高的难度吧！"}]}
### 单人、C~S、难度1、一命
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=score,scores={data=60..}] ~~~ tellraw @a[scores={deathCount=0}] {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7恭喜，你的PVE技术合格啦~"}]}
### 单人、C~S、难度2~3
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=2..3}] ~~~ execute @e[name=score,scores={data=60..}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a帕（Hfpa0117）： §7恭喜你通过此次试炼！可以的话尝试考虑更高的难度吧！"}]}
