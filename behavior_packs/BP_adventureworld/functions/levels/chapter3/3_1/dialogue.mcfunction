# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7在你战斗的过程中，我还翻译了其它内容，有【奠基】仪式的记录。"}]}
execute @e[name=dialogue,scores={active=2,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7奠基仪式？给我也讲一讲吧。"}]}
execute @e[name=dialogue,scores={active=2,time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【为纪念四位贤者封印魔王的英勇事迹】"}]}
execute @e[name=dialogue,scores={active=2,time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【暨将传说武器“旷野之剑”传承于后人】"}]}
execute @e[name=dialogue,scores={active=2,time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【在此修建剑之神殿，设置剑之试炼】"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【剑术不精者无资格入内】"}]}
execute @e[name=dialogue,scores={active=2,time=540}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7原来这里的修建和过去的我们还有关系呢。"}]}
execute @e[name=dialogue,scores={active=2,time=620}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7那么，这把剑的传承人非我莫属了！"}]}
execute @e[name=dialogue,scores={active=2,time=700}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嗯......也算是这样吧......"}]}

execute @e[name=dialogue,scores={active=2,time=740}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}

execute @e[name=dialogue,scores={active=2,time=740}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哎呦，这个游泳的路程又长又复杂。"}]}
execute @e[name=dialogue,scores={active=1,time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7究竟是谁设计的？比恶魔还可恶。"}]}
execute @e[name=dialogue,scores={active=1,time=160}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7哈哈哈哈哈哈哈。"}]}

execute @e[name=dialogue,scores={active=1,time=161}] ~~~ function lib/states/dialogue/disable
