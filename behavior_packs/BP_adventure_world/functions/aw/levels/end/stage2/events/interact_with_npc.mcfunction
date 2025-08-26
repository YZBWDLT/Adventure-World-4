# ===== 玩家和 NPC 交互时 =====
# 10-2 | 进行最终结算
# （命令执行者为 NPC）

# 田英
    execute if entity @s[has_property={aw:is_author=false,aw:skin=7}] run tellraw @p {"rawtext":[{"translate":"* §b%%s： §7如果你还有点意犹未尽，你可以§d再去问问张宇老板§8（和他交互）§7。","with":{"rawtext":[{"selector":"@s"}]}}]}
    event entity @s[has_property={aw:is_author=false,aw:skin=7,aw:animation="none"}] aw:animation_speak
# 米云溪
    execute if entity @s[has_property={aw:is_author=false,aw:skin=4}] run tellraw @p {"rawtext":[{"translate":"* §c%%s： §7我们在你家§d布置了很多新东西哦§7！记得去看看。","with":{"rawtext":[{"selector":"@s"}]}}]}
    event entity @s[has_property={aw:is_author=false,aw:skin=4,aw:animation="none"}] aw:animation_speak
# 张宇
    execute if entity @s[has_property={aw:is_author=false,aw:skin=6}] run scoreboard players set timeline active 3
    event entity @s[has_property={aw:is_author=false,aw:skin=6,aw:animation="none"}] aw:animation_speak
# 其他作者
    ## YZBWDLT | active.timeline = 4
        execute if entity @s[has_property={aw:is_author=true,aw:skin=0}] run scoreboard players set timeline active 4
    ## Andy7343 | active.timeline = 5
        execute if entity @s[has_property={aw:is_author=true,aw:skin=1}] run scoreboard players set timeline active 5
    ## GreeLeaf | active.timeline = 6
        execute if entity @s[has_property={aw:is_author=true,aw:skin=2}] run scoreboard players set timeline active 6
    ## KrisWenYu | active.timeline = 7
        execute if entity @s[has_property={aw:is_author=true,aw:skin=4}] run scoreboard players set timeline active 7
    ## PigeonKI | active.timeline = 8
        execute if entity @s[has_property={aw:is_author=true,aw:skin=3}] run scoreboard players set timeline active 8
    ## xiaoshu512 | active.timeline = 9
        execute if entity @s[has_property={aw:is_author=true,aw:skin=6}] run scoreboard players set timeline active 9
    ## KianaKasnala947 | active.timeline = 10
        execute if entity @s[has_property={aw:is_author=true,aw:skin=9}] run scoreboard players set timeline active 10
    ## Hfpa0117 | active.timeline = 11
        execute if entity @s[has_property={aw:is_author=true,aw:skin=11}] run scoreboard players set timeline active 11
    ## xc13599305 | active.timeline = 12
        execute if entity @s[has_property={aw:is_author=true,aw:skin=10}] run scoreboard players set timeline active 12
    ## PumpkinJui | active.timeline = 13
        execute if entity @s[has_property={aw:is_author=true,aw:skin=5}] run scoreboard players set timeline active 13
    ## Tuffy2020China
        execute if entity @s[has_property={aw:is_author=true,aw:skin=7}] run tellraw @a {"rawtext":[{"translate":"* §a蒙德人（Tuffy2020China）： §7哎呦？不错哦！居然通关了？汗流浃背了吧，牢弟！小…猫？（喜欢吗？）喜欢就快催量老师和大佬们更新地图吧！"}]}
    ## IBukreev
        execute if entity @s[has_property={aw:is_author=true,aw:skin=8}] run tellraw @a {"rawtext":[{"translate":"* §a火卫三（IBukreev）： §7yeeee~"}]}
    ## Ender5207541
        execute if entity @s[has_property={aw:is_author=true,aw:skin=12}] run tellraw @a {"rawtext":[{"translate":"* §a基岩（Ender5207541）： §7作业写完了吗？（doge）"}]}
    ## RustyAbyss29193
        execute if entity @s[has_property={aw:is_author=true,aw:skin=13}] run tellraw @a {"rawtext":[{"translate":"* §a烟雨（RustyAbyss29193）： §7恭喜通关，充满决心的冒险家。"}]}
    ## EnderLife5409
        execute if entity @s[has_property={aw:is_author=true,aw:skin=14}] run tellraw @a {"rawtext":[{"translate":"* §a千里（EnderLife5409）： §7你的经历会被记载在某张羊皮纸上，其中所记载的一切将永远不会重现，但在世界另一角，溺尸嘶吼着又拾起了三叉戟，另一个冒险世界，风云再起！"}]}
    ## OneKitty710926
        execute if entity @s[has_property={aw:is_author=true,aw:skin=15}] run tellraw @a {"rawtext":[{"translate":"* §a水晶哥（OneKitty710926）： §7* 保持你的决心......"}]}
    ## FoxLanMo
        execute if entity @s[has_property={aw:is_author=true,aw:skin=16}] run tellraw @a {"rawtext":[{"translate":"* §a风暴（FoxLanMo）： §7可恶，量筒地图怎么这么难……哼哼哼啊啊啊啊啊啊啊啊（尖叫）（扭曲）（阴暗地爬行）§8[原文如此]"}]}
    ## kuanpan 9527
        execute if entity @s[has_property={aw:is_author=true,aw:skin=17}] run tellraw @a {"rawtext":[{"translate":"* §a宽判（kuanpan 9527）： §7我PVE真是太菜了。"}]}
    ## longlongxiaotao
        execute if entity @s[has_property={aw:is_author=true,aw:skin=18}] run tellraw @a {"rawtext":[{"translate":"* §a龙龙（longlongxiaotao）： §7希望你能在本地图取得好成绩，找到属于你的那一份快乐吧！！！"}]}
    ## freeorange114 | 留言：咱们生电大佬的PvE技术可不是盖的（迫真
    ## 对于从 Tuffy2020China ~ longlongxiaotao 只有一句话的测试员，直接进行说话动作
        event entity @s[has_property={aw:is_author=true,aw:skin=7..8,aw:animation="none"}] aw:animation_speak
        event entity @s[has_property={aw:is_author=true,aw:skin=12..18,aw:animation="none"}] aw:animation_speak
    ## 重置timeline时间，以不串对话
        execute if entity @s[has_property={aw:is_author=true,aw:skin=0..6}] run scoreboard players set timeline time 0
        execute if entity @s[has_property={aw:is_author=true,aw:skin=9..11}] run scoreboard players set timeline time 0
