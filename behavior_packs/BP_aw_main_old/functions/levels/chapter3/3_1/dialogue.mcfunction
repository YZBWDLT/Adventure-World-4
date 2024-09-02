# ===== 剧情线 =====

# --- 锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=2,time=60}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7在你战斗的过程中，我还翻译了其它内容。铭文上有关于【奠基】仪式的记录。"}]}
execute @e[name=dialogue,scores={active=2,time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7奠基仪式？挺好，讲一讲记录了什么吧。"}]}
execute @e[name=dialogue,scores={active=2,time=220}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【为纪念四位贤者封印魔王的英勇事迹】"}]}
execute @e[name=dialogue,scores={active=2,time=300}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【暨将传说武器“旷野之剑”传承于后人】"}]}
execute @e[name=dialogue,scores={active=2,time=380}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【在此修建剑之神殿，设置剑之试炼】"}]}
execute @e[name=dialogue,scores={active=2,time=460}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【剑术不精者无资格入内】"}]}
execute @e[name=dialogue,scores={active=2,time=540}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7原来这里的修建和过去的我们还有关系呢。"}]}
execute @e[name=dialogue,scores={active=2,time=620}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7那么，这把剑的传承人非我莫属了！"}]}
execute @e[name=dialogue,scores={active=2,time=700}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7没想到你还有这么自恋的一面呐~理论上其他人也有获得这把剑的资格哦。不过我相信你的实力！"}]}

execute @e[name=dialogue,scores={active=2,time=740}] ~~~ tellraw @a {"rawtext":[{"text":"§f你现在可以移动了！"}]}

execute @e[name=dialogue,scores={active=2,time=740}] ~~~ function lib/states/dialogue/disable

# --- 未锁定视角的剧情线 ---
execute @e[name=dialogue,scores={active=1,time=1}] ~~~ tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7哎呦我的天，究竟是谁设计的啊？这回去的水道真是又臭又长的啊。(///￣皿￣)○～"}]}
execute @e[name=dialogue,scores={active=1,time=80}] ~~~ tellraw @a {"rawtext":[{"text":"* §c米云溪： §7嘻嘻，你猜猜看~？"}]}

execute @e[name=dialogue,scores={active=1,time=81}] ~~~ function lib/states/dialogue/disable
