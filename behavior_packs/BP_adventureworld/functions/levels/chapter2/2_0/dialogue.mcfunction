# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，我好像离开沙漠神殿了。接下来应该是……"}]}
execute @e[name=dialogue,scores={active=2,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7下一大关，【丛林神殿】"}]}
execute @e[name=dialogue,scores={active=2,time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【蜘蛛与爬行者于密林中阻挠】"}]}
execute @e[name=dialogue,scores={active=2,time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7咦？田英去哪了，他为什么一直没说话？"}]}
execute @e[name=dialogue,scores={active=2,time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7你进去后，他就跑到神殿屋顶睡觉了。"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7不愧是他。"}]}
execute @e[name=dialogue,scores={active=2,time=500}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}

execute @e[name=dialogue,scores={active=2,time=500}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7注意当心蜘蛛和苦力怕。"}]}

execute @e[name=dialogue,scores={active=1,time=2}] ~~~ function lib/states/dialogue/disable
