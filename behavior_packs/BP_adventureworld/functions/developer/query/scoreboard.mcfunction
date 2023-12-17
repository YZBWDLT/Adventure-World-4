# 反馈
tellraw @s {"rawtext":[{"text":"下文反馈格式: (记分项).(标记名) = (值)，并反馈注释\n§e*黄色：假名（即非标记实体）变量 §b*蓝色：玩家个人数据"}]}

## === 激活数据 active ===

tellraw @s {"rawtext":[{"translate":"active.soundPlayer = %%s §7# 音效播放器，0：不激活，不为0：根据本值决定播放何种音效","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"active.timeline = %%s §7# 时间线控制器：为1时开始计时","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=timeline]"}}]}}]}

## === 后台数据 ===
tellraw @s {"rawtext":[{"translate":"background.alivePlayersAmount = %%s §7# 记录存活玩家数目","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=alivePlayersAmount]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.allPlayersAmount = %%s §7# 记录所有玩家数目","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=allPlayersAmount]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.hookshotAmount = %%s §7# 记录绳枪数目","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=hookshotAmount]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.lastWaveCompleted = %%s §7# 上一波是否已完成","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=lastWaveCompleted]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.level = %%s §7# 记录关卡数据，三位数分别为(章节)(关卡)(是否已完成)","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=level]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§ebackground.maxMonsterAmount = %%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"background","name":"maxMonsterAmount"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.maxWave = %%s §7# 记录该关卡最大波数，仅在需要时获取","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=maxWave]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.monsterAmount = %%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.randomLocation = %%s §7# 随机怪物刷新位置","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=randomLocation]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.randomMonster = %%s §7# 随机怪物种类","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=randomMonster]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.wave = %%s §7# 记录波数数据","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}}]}}]}

## === 玩家个人数据 ===

tellraw @s {"rawtext":[{"translate":"§bcrosshair.@s = %%s §7# 准星启用状态","with":{"rawtext":[{"score":{"objective":"crosshair","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§bdeathTimes.@s = %%s §7# 玩家死亡次数","with":{"rawtext":[{"score":{"objective":"deathTimes","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§binLevelArea.@s = %%s §7# 玩家所在的关卡区域","with":{"rawtext":[{"score":{"objective":"inLevelArea","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§bisAlive.@s = %%s §7# 玩家存活状态，0=游戏时死亡，1=游戏时存活，2=未在游戏中","with":{"rawtext":[{"score":{"objective":"isAlive","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§bisHoldingHelmet.@s = %%s §7# 玩家是否手持过钻石头盔，0=未手持过，1=正在手持，2=手持过","with":{"rawtext":[{"score":{"objective":"isHoldingHelmet","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§bisHoldingBoots.@s = %%s §7# 玩家是否手持过钻石靴子，0=未手持过，1=正在手持，2=手持过","with":{"rawtext":[{"score":{"objective":"isHoldingBoots","name":"@s"}}]}}]}

## === 设置数据 settings ===

tellraw @s {"rawtext":[{"translate":"settings.developerMode = %%s §7# 开发者模式","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=developerMode]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"settings.isNetease = %%s §7# 记录是否为netease版本","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=isNetease]"}}]}}]}

## === 后台数据 stats ===

tellraw @s {"rawtext":[{"translate":"stats.failedTimes = %%s §7# 记录失败次数","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=failedTimes]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§estats.allFailedTimes = %%s §7# 记录失败次数","with":{"rawtext":[{"score":{"objective":"stats","name":"allFailedTimes"}}]}}]}

## === 缓存数据 temp&temp2&temp3 ===
tellraw @s {"rawtext":[{"translate":"temp.level = %%s §7# 通过位数分离器获取的章节数据","with":{"rawtext":[{"score":{"objective":"temp","name":"@e[name=level]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"temp.respawner = %%s §7# 重生点随机数据","with":{"rawtext":[{"score":{"objective":"temp","name":"@e[name=respawner]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§btemp.@s = %%s §7# 不定意义","with":{"rawtext":[{"score":{"objective":"temp","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"temp2.level = %%s §7# 通过位数分离器获取的关卡数据","with":{"rawtext":[{"score":{"objective":"temp2","name":"@e[name=level]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§btemp2.@s = %%s §7# 通过位数分离器获取的当前所在关卡章节","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
tellraw @s {"rawtext":[{"translate":"temp3.level = %%s §7# 通过位数分离器获取的游玩状态数据，1=已完成关卡，0=未完成关卡","with":{"rawtext":[{"score":{"objective":"temp3","name":"@e[name=level]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"§btemp3.@s = %%s §7# 通过位数分离器获取的当前所在关卡数","with":{"rawtext":[{"score":{"objective":"temp3","name":"@s"}}]}}]}

## === 时间数据 time ===

tellraw @s {"rawtext":[{"translate":"time.monsterRefreshLeft = %%s §7# 怪物刷新频率","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=monsterRefreshLeft]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.monsterSummonDelay = %%s §7# 怪物生成延迟","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=monsterSummonDelay]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.playedMinute = %%s §7# 游玩时长（分钟），从试炼开始时开始计时","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.playedSecond = %%s §7# 游玩时长（秒），从试炼开始时开始计时","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.lavaWarningLeft = %%s §7# 用于设定岩浆溢出的剩余时间","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=lavaWarningLeft]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.soundPlayer = %%s §7# 音效播放器，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.tick = %%s §7# 每1刻加1分，每20刻归零","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=tick]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.timeLeft = %%s §7# 关卡剩余时间，单位秒","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeLeft]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.timeline = %%s §7# 时间线","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeline]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.10SecondsCycle = %%s §7# 每1秒加1分，每10秒归零","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=10SecondsCycle]"}}]}}]}
