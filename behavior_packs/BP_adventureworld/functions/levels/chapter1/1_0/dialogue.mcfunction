# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7喂？喂？能听得到吗？"}]}
execute @e[name=dialogue,scores={active=2,time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7能听到！林乐你现在在哪？"}]}
execute @e[name=dialogue,scores={active=2,time=260}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7周围像是沙漠一样，我拿到了武器装备，前面就要战斗了。"}]}
execute @e[name=dialogue,scores={active=2,time=360}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7沙漠神殿……和所刻的文字一样，果然没错！"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7林乐，这里的【剑之试炼关卡设置】记录了关卡的内容，我现在就告诉你。"}]}
execute @e[name=dialogue,scores={active=2,time=560}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【沙漠神殿】"}]}
execute @e[name=dialogue,scores={active=2,time=660}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【僵尸及骷髅潜伏于此地。另将绳枪置于此处，善于使用者方可前进】"}]}
execute @e[name=dialogue,scores={active=2,time=760}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好的，我记住了。"}]}
execute @e[name=dialogue,scores={active=2,time=860}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7这里好像还有其他神殿的结构啊。要是你发现房间的风格改变了就告诉我，我来告诉你接下来的试炼内容。"}]}
execute @e[name=dialogue,scores={active=2,time=960}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7嗯，我出发了。"}]}
execute @e[name=dialogue,scores={active=2,time=1000}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！\n§a你可以使用传声石结晶与外界保持联络，试一下吧！"}]}

execute @e[name=dialogue,scores={active=2,time=1000}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿，能听到吗？"}]}
execute @e[name=dialogue,scores={active=1,time=100}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7听得到，记得保持联系！"}]}

execute @e[name=dialogue,scores={active=1,time=101}] ~~~ function lib/states/dialogue/disable
