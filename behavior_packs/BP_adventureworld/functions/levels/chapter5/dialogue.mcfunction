# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，云儿。"}]}
execute @e[name=dialogue,scores={active=2,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你怎么了，有危险吗？"}]}
execute @e[name=dialogue,scores={active=2,time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7我来到红石神殿了，这里好奇怪啊，一个怪物都没有。"}]}
execute @e[name=dialogue,scores={active=2,time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7文字是怎么记录这里的？你帮我看看。"}]}
execute @e[name=dialogue,scores={active=2,time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7啊......这......"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7等你上来自己看吧，我把翻译后的内容都记下来了......"}]}
execute @e[name=dialogue,scores={active=2,time=540}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7行......？"}]}

execute @e[name=dialogue,scores={active=2,time=580}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}

execute @e[name=dialogue,scores={active=2,time=580}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"§7目前没什么可聊的"}]}
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ function lib/states/dialogue/disable
