# ===== 剧情线 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* 就这样，我们按照老板给出的描述来到了湖边的山脚下。"}]}
execute @e[name=dialogue,scores={time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* 深吸一口气之后，我将老板交给我的碎片放在地上。"}]}
execute @e[name=dialogue,scores={time=260}] ~~~ tellraw @a {"rawtext":[{"text":"* 突然，地动山摇，面前的山峦轰然打开，正如老板所言，背后正是一片被群山环绕的小湖。"}]}
execute @e[name=dialogue,scores={time=360}] ~~~ tellraw @a {"rawtext":[{"text":"* 湖心小岛上，一座古老的庙宇矗立于其中，不知为何有一种熟悉的感觉......"}]}

execute @e[name=dialogue,scores={time=361}] ~~~ function lib/states/dialogue/disable
