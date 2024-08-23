# ===== 战斗模式的开幕剧情部分 =====

execute @e[name=dialogue,scores={time=490}] ~~~ tellraw @a {"rawtext":[{"text":"* 村里一位老伯和你说，有一把传说的武器藏在了某个试炼之中。"}]}
execute @e[name=dialogue,scores={time=590}] ~~~ tellraw @a {"rawtext":[{"text":"* 你顺着线索找到了试炼，走了进去......"}]}

execute @e[name=dialogue,scores={time=690}] ~~~ function lib/states/dialogue/disable
