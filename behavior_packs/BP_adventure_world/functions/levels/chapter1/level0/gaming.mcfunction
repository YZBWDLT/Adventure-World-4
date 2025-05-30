# ===== 关卡游戏时时间线 =====

# --- 剧情 ---

# [1] 相机变换：划过开始房间
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7喂？喂？能听得到吗？"}]}
execute if score timeline time matches 140 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7能听到！林乐你现在在哪？"}]}
execute if score timeline time matches 220 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7周围的环境好像沙漠诶，我刚刚拿到了武器装备，前面就要战斗了。"}]}
# [300] 相机变换：划过1-1
execute if score timeline time matches 300 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7沙漠神殿......和所刻的文字一样，果然没错！"}]}
execute if score timeline time matches 380 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7林乐，铭文上有关于【剑之试炼关卡设置】的描述，我来同你分享一下吧。"}]}
execute if score timeline time matches 460 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【沙漠神殿】"}]}
execute if score timeline time matches 540 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【僵尸及骷髅潜伏于此地。另将绳枪置于此处，善于使用者方可前进】"}]}
# [600] 相机变换：望向壁画
execute if score timeline time matches 620 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7好！我记住了。"}]}
execute if score timeline time matches 700 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7这里好像还有其他神殿的结构啊。看描述，每一个神殿的环境都不太一样。要是你发现周围环境改变了就告诉我，我来告诉你接下来的试炼内容。"}]}
execute if score timeline time matches 780 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7嗯，那我出发了。"}]}
execute if score timeline time matches 820 run tellraw @a {"rawtext":[{"text":"§a你可以使用传声石结晶与外界保持联络，试一下吧！"}]}

# --- 相机变换 ---

## [1] 划过开始房间
execute if score timeline time matches 1 run camera @a set minecraft:free pos -121 7 -5 facing @a[c=1]
execute if score timeline time matches 2 run camera @a set minecraft:free ease 15 in_out_sine pos -122 4 3 facing @a[c=1]
## [300] 划过1-1
execute if score timeline time matches 300 run camera @a set minecraft:free pos -117 3.8 -7 rot 45 0
execute if score timeline time matches 301 run camera @a set minecraft:free ease 15 out_sine pos -117 3.8 25 rot 0 0
## [600] 望向壁画
execute if score timeline time matches 600 run camera @a set minecraft:free pos -119 2.5 -4 facing -124 1 -3
execute if score timeline time matches 601 run camera @a set minecraft:free ease 15 out_sine pos -119 2.5 -4 facing -124 5 1

# --- 剧情结束 ---
execute if score timeline time matches 820 run function levels/chapter1/level0/completed
