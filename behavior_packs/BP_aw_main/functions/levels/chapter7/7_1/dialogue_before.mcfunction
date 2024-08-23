# ===== 剧情线 =====

# --- 剧情模式 ---
execute @e[name=dialogue,scores={time=120}] ~~~ execute @e[name=storyMode,scores={data=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7§o（深吸一口气）§r§7这......不知道什么原因和云儿联络不了了。"}]}
execute @e[name=dialogue,scores={time=200}] ~~~ execute @e[name=storyMode,scores={data=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §r§7看样子这是最后的大关了......放心吧！我可是勇气贤者啊！"}]}

# --- 纯战斗模式 ---
execute @e[name=dialogue,scores={time=200}] ~~~ execute @e[name=storyMode,scores={data=0}] ~~~ tellraw @a {"rawtext":[{"translate":"§c* 准备好了吗？这是你最后的试炼。"}]}

execute @e[name=dialogue,scores={time=349}] ~~~ function lib/states/dialogue/disable
