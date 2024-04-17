# ===== 记分板查询函数 =====
# 调用此函数以查询所有记分板的值 | 仅限开发者模式下启用

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}

## --- 开启开发者模式时 ---
tellraw @s[scores={temp=1}] {"rawtext":[{"text":"下文反馈格式: (记分项).(标记名) = (值)，并反馈注释\n§e*黄色：假名（即非标记实体）变量 §b*蓝色：玩家个人数据"}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== 玩家个人数据记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bdeathTimes.@s = §a%%s §7# 玩家死亡次数","with":{"rawtext":[{"score":{"objective":"deathTimes","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bisAlive.@s = §a%%s §7# 玩家存活状态，0：游戏时死亡，1：游戏时存活，2：未在游戏中，3：进入新的关卡区域","with":{"rawtext":[{"score":{"objective":"isAlive","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bisOnline.@s = §a%%s §7# 玩家是否为在线的玩家，0：不在线，1：在线","with":{"rawtext":[{"score":{"objective":"isOnline","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bposition.@s = §a%%s §7# 玩家所在的关卡区域","with":{"rawtext":[{"score":{"objective":"position","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§btime.@s = §a%%s §7# 玩家持续未重生的时间，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@s"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== active记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.dialogue = §a%%s §7# 对话控制器，0：不启用对话，1：启用不固定视角的对话，2：启用固定视角的对话","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=dialogue]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.levelCompleteDelay = §a%%s §7# 关卡完成延迟（启用值），0：无延迟完成关卡，大于0：按照该值延迟完成关卡，-1：永远不按照怪物数目完成关卡","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=levelCompleteDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.monsterSummonDelay = §a%%s §7# 怪物生成延迟（启用值），0：无延迟，1：有延迟","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=monsterSummonDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.soundPlayer = §a%%s §7# 音效播放器，0：不激活，不为0：根据本值决定播放何种音效","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.timeline = §a%%s §7# 时间线控制器：为1时开始计时","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=timeline]"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== data记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.alivePlayersAmount = §a%%s §7# 记录存活玩家数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=alivePlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.allFailedTimes = §a%%s §7# 记录所有关卡累计的失败次数","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=allFailedTimes]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.achievement = §a%%s §7# 记录显示第几个成就","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=achievement]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.difficulty = §a%%s §7# 记录难度。","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=difficulty]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.failedTimes = §a%%s §7# 记录单个关卡的失败次数，当失败次数过多时将给予buff辅助过关","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=failedTimes]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.hookshotAmount = §a%%s §7# 记录绳枪数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=hookshotAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.isNetease = §a%%s §7# 记录是否为netease版本","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=isNetease]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.level = §a%%s §7# 记录关卡数据，三位数分别为(章节)(关卡)(是否已完成)","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§edata.maxMonsterAmount = §a%%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"data","name":"maxMonsterAmount"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.maxPlayersAmount = §a%%s §7# 记录所有玩家数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=maxPlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.maxWave = §a%%s §7# 记录该关卡最大波数，仅在需要时获取","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=maxWave]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.monsterAmount = §a%%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=monsterAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.randomLocation = §a%%s §7# 随机怪物刷新位置","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=randomLocation]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.randomMonster = §a%%s §7# 随机怪物种类","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=randomMonster]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.realDeadPlayersAmount = §a%%s §7# 记录死亡玩家（游戏意义上）的数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=realDeadPlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.wave = §a%%s §7# 记录波数数据","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== record记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.bestTimeMinute1 = §a%%s §7# 难度1下的最佳时间（分钟）","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute1"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.bestTimeSecond1 = §a%%s §7# 难度1下的最佳时间（秒）","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeSecond1"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.bestTimeMinute2 = §a%%s §7# 难度2下的最佳时间（分钟）","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute2"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.bestTimeSecond2 = §a%%s §7# 难度2下的最佳时间（秒）","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeSecond2"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.bestTimeMinute3 = §a%%s §7# 难度3下的最佳时间（分钟）","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute3"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.bestTimeSecond3 = §a%%s §7# 难度3下的最佳时间（秒）","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeSecond3"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.bestTimeMinute4 = §a%%s §7# 难度4下的最佳时间（分钟）","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeMinute4"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.bestTimeSecond4 = §a%%s §7# 难度4下的最佳时间（秒）","with":{"rawtext":[{"score":{"objective":"record","name":"bestTimeSecond4"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§erecord.mapCompletedTimes = §a%%s §7# 地图通关次数","with":{"rawtext":[{"score":{"objective":"record","name":"mapCompletedTimes"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== settings记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.developerMode = §a%%s §7# 开发者模式,0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=developerMode]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.difficultyAdder = §a%%s §7# 游戏难度加和，以difficulty+本值得到最终的难度值（data.difficulty）。","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=difficultyAdder]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.storyMode = §a%%s §7# 是否启用剧情模式，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=storyMode]"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== temp类记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp.level = §a%%s §7# 通过位数分离器获取的章节数据","with":{"rawtext":[{"score":{"objective":"temp","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp.respawner = §a%%s §7# 重生点随机数据","with":{"rawtext":[{"score":{"objective":"temp","name":"@e[name=respawner]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp.@e[family=blaze_king] = §a%%s §7# 烈焰之魂试图生成怪物的倒计时，单位：秒","with":{"rawtext":[{"score":{"objective":"temp","name":"@e[family=blaze_king]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§btemp.@s = §a%%s §7# 不定意义","with":{"rawtext":[{"score":{"objective":"temp","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp2.level = §a%%s §7# 通过位数分离器获取的关卡数据","with":{"rawtext":[{"score":{"objective":"temp2","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp2.@e[family=blaze_king] = §a%%s §7# 烈焰之魂当前的血量情况，1：一阶段（血量2/3~3/3）；2：二阶段（血量1/3~2/3）；3：三阶段（血量0~1/3）","with":{"rawtext":[{"score":{"objective":"temp2","name":"@e[family=blaze_king]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§btemp2.@s = §a%%s §7# 通过位数分离器获取的当前所在关卡章节","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp3.level = §a%%s §7# 通过位数分离器获取的游玩状态数据，1：已完成关卡，0：未完成关卡","with":{"rawtext":[{"score":{"objective":"temp3","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp3.@e[family=blaze_king] = §a%%s §7# 烈焰之魂试图令岩浆涨落的倒计时，单位：秒","with":{"rawtext":[{"score":{"objective":"temp3","name":"@e[family=blaze_king]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§btemp3.@s = §a%%s §7# 通过位数分离器获取的当前所在关卡数","with":{"rawtext":[{"score":{"objective":"temp3","name":"@s"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== time记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.dialogue = §a%%s §7# 剧情线，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=dialogue]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.levelCompleteDelay = §a%%s §7# 关卡完成延迟，0：无延迟完成关卡，大于0：按照该值延迟完成关卡，-1：永远不按照怪物数目完成关卡，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=levelCompleteDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.monsterRefreshLeft = §a%%s §7# 怪物刷新频率，单位：秒","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=monsterRefreshLeft]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.monsterSummonDelay = §a%%s §7# 怪物生成延迟，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=monsterSummonDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.playedMinute = §a%%s §7# 游玩时长，从试炼开始时开始计时，单位：分钟","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.playedSecond = §a%%s §7# 游玩时长，从试炼开始时开始计时，单位：秒","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.soundPlayer = §a%%s §7# 音效播放器，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.tick = §a%%s §7# 每1刻加1分，每20刻归零，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=tick]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.timeLeft = §a%%s §7# 关卡剩余时间，单位秒","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeLeft]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.timeline = §a%%s §7# 时间线，单位不定","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeline]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.@e[family=blaze_king] = §a%%s §7# 烈焰之魂试图随机传送的倒计时，单位：秒","with":{"rawtext":[{"score":{"objective":"time","name":"@e[family=blaze_king]"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== 标签类型（tag）项 ====="}]}

tellraw @s[scores={temp=1},tag=!bootsHeld] {"rawtext":[{"translate":"§ebootsHeld = §afalse §7# 玩家是否手持过钻石靴子（aw:diamond_boots） | true=是，false=否"}]}
tellraw @s[scores={temp=1},tag=bootsHeld] {"rawtext":[{"translate":"§ebootsHeld = §atrue §7# 玩家是否手持过钻石靴子（aw:diamond_boots） | true=是，false=否"}]}

tellraw @s[scores={temp=1},tag=!helmetHeld] {"rawtext":[{"translate":"§ehelmetHeld = §afalse §7# 玩家是否手持过钻石头盔（aw:diamond_helmet） | true=是，false=否"}]}
tellraw @s[scores={temp=1},tag=helmetHeld] {"rawtext":[{"translate":"§ehelmetHeld = §atrue §7# 玩家是否手持过钻石头盔（aw:diamond_helmet） | true=是，false=否"}]}

tellraw @s[scores={temp=1},tag=!isAlive] {"rawtext":[{"translate":"§eisAlive = §afalse §7# 玩家是否存活 | true=是，false=否"}]}
tellraw @s[scores={temp=1},tag=isAlive] {"rawtext":[{"translate":"§eisAlive = §atrue §7# 玩家是否存活 | true=是，false=否"}]}

tellraw @s[scores={temp=1},tag=!virtualCrosshairEnabled] {"rawtext":[{"translate":"§evirtualCrosshairEnabled = §afalse §7# 玩家是否启用了虚拟准星 | true=是，false=否"}]}
tellraw @s[scores={temp=1},tag=virtualCrosshairEnabled] {"rawtext":[{"translate":"§evirtualCrosshairEnabled = §atrue §7# 玩家是否启用了虚拟准星 | true=是，false=否"}]}



scoreboard players set @s temp 0