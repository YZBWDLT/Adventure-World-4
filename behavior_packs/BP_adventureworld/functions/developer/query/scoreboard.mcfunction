# 反馈
tellraw @s {"rawtext":[{"text":"下文反馈格式: (记分项).(标记名) = (值)，并反馈注释"}]}

## === 激活数据 active ===

tellraw @s {"rawtext":[{"translate":"active.arrowTraversing = %%s §7# 箭遍历器","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=arrowTraversing]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"active.bonusTraversing = %%s §7# 奖励遍历器","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=bonusTraversing]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"active.gameStartingTick = %%s §7# 激活游戏开幕状态","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=gameStartingTick]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"active.levelTesting = %%s §7# 关卡检测器","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=levelTesting]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"active.potionTraversing = %%s §7# 药水遍历器","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=potionTraversing]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"active.soundPlayer = %%s §7# 音效播放器，0：不激活，不为0：根据本值决定播放何种音效","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"active.timeline = %%s §7# 时间线控制器：为1时开始计时","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=timeline]"}}]}}]}

## === 后台数据 ===
tellraw @s {"rawtext":[{"translate":"background.alivePlayersAmount = %%s §7# 记录存活玩家数目","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=alivePlayersAmount]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.hookshotAmount = %%s §7# 记录绳枪数目","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=hookshotAmount]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.level = %%s §7# 记录关卡数据，三位数分别为(章节)(关卡)(已完成波数)","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=level]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.monsterAmount = %%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=monsterAmount]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.randomLocation = %%s §7# 随机怪物刷新位置","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=randomLocation]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"background.randomMonster = %%s §7# 随机怪物种类","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=randomMonster]"}}]}}]}

## === crosshair ===

tellraw @s {"rawtext":[{"translate":"crosshair.@s = %%s §7# 准星启用状态","with":{"rawtext":[{"score":{"objective":"crosshair","name":"@s"}}]}}]}

## === 设置数据 settings ===

tellraw @s {"rawtext":[{"translate":"settings.developerMode = %%s §7# 开发者模式","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=developerMode]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"settings.isNetease = %%s §7# 记录是否为netease版本","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=isNetease]"}}]}}]}

## === 后台数据 stats ===

tellraw @s {"rawtext":[{"translate":"stats.failedTimes = %%s §7# 记录失败次数","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=failedTimes]"}}]}}]}

## === 时间数据 time ===

tellraw @s {"rawtext":[{"translate":"time.gameStartingTick = %%s §7# 游戏开幕时间轴","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=gameStartingTick]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.monsterRefreshLeft = %%s §7# 怪物刷新频率","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=monsterRefreshLeft]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.playedMinute = %%s §7# 游玩时长（分钟），从试炼开始时开始计时","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.playedSecond = %%s §7# 游玩时长（秒），从试炼开始时开始计时","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.lavaWarningLeft = %%s §7# 用于设定岩浆溢出的剩余时间","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=lavaWarningLeft]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.saturationSecond = %%s §7# 饱和度刷新频率，每20秒给予1次饱和 256","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=saturationSecond]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.soundPlayer = %%s §7# 音效播放器，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.tick = %%s §7# 每1刻加1分，每20刻归零","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=tick]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.timeLeft = %%s §7# 关卡剩余时间，单位秒","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeLeft]"}}]}}]}
tellraw @s {"rawtext":[{"translate":"time.timeline = %%s §7# 时间线","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeline]"}}]}}]}
