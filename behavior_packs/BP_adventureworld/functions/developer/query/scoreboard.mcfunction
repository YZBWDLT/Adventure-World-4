# 反馈
tellraw @s {"rawtext":[{"text":"下文反馈格式: (记分项).(标记名) = (值)，并反馈注释"}]}

## === 激活数据 active ===

tellraw @s {"rawtext":[{"translate":"§7# 箭遍历器"}]}
tellraw @s {"rawtext":[{"translate":"active.arrowTraversing = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=arrowTraversing]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 奖励遍历器"}]}
tellraw @s {"rawtext":[{"translate":"active.bonusTraversing = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=bonusTraversing]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 开发者模式"}]}
tellraw @s {"rawtext":[{"translate":"active.developerMode = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=developerMode]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 激活游戏开幕状态"}]}
tellraw @s {"rawtext":[{"translate":"active.gameStartingTick = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=gameStartingTick]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 关卡检测器"}]}
tellraw @s {"rawtext":[{"translate":"active.levelTesting = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=levelTesting]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 药水遍历器"}]}
tellraw @s {"rawtext":[{"translate":"active.potionTraversing = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=potionTraversing]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 音效控制器：铁砧，为1时开始播放"}]}
tellraw @s {"rawtext":[{"translate":"active.soundAnvilTicker = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=soundAnvilTicker]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 音效控制器：信标，为1时开始播放"}]}
tellraw @s {"rawtext":[{"translate":"active.soundBeaconTicker = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=soundBeaconTicker]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 时间线控制器：为1时开始计时"}]}
tellraw @s {"rawtext":[{"translate":"active.timeline = %%s","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=timeline]"}}]}}]}

## === crosshair ===

tellraw @s {"rawtext":[{"translate":"§7# 准星启用状态"}]}
tellraw @s {"rawtext":[{"translate":"crosshair.@s = %%s","with":{"rawtext":[{"score":{"objective":"crosshair","name":"@s"}}]}}]}

## === 后台数据 stats ===

tellraw @s {"rawtext":[{"translate":"§7# 记录存活玩家数目"}]}
tellraw @s {"rawtext":[{"translate":"stats.alivePlayersAmount = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=alivePlayersAmount]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 记录失败次数"}]}
tellraw @s {"rawtext":[{"translate":"stats.failedTimes = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=failedTimes]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 记录绳枪数目"}]}
tellraw @s {"rawtext":[{"translate":"stats.hookshotAmount = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=hookshotAmount]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# Record whether the version is the netease version or not. "}]}
tellraw @s {"rawtext":[{"translate":"stats.isNetease = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=isNetease]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 记录关卡数据，三位数分别为(章节)(关卡)(已完成波数)"}]}
tellraw @s {"rawtext":[{"translate":"stats.level = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=level]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 记录怪物数目"}]}
tellraw @s {"rawtext":[{"translate":"stats.monsterAmount = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=monsterAmount]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 随机怪物刷新位置"}]}
tellraw @s {"rawtext":[{"translate":"stats.randomLocation = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=randomLocation]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 随机怪物种类"}]}
tellraw @s {"rawtext":[{"translate":"stats.randomMonster = %%s","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=randomMonster]"}}]}}]}

## === 时间数据 time ===

tellraw @s {"rawtext":[{"translate":"§7# 游戏开幕时间轴"}]}
tellraw @s {"rawtext":[{"translate":"time.gameStartingTick = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=gameStartingTick]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 怪物刷新频率"}]}
tellraw @s {"rawtext":[{"translate":"time.monsterRefreshLeft = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=monsterRefreshLeft]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 游玩时长（分钟），从试炼开始时开始计时"}]}
tellraw @s {"rawtext":[{"translate":"time.playedMinute = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 游玩时长（秒），从试炼开始时开始计时"}]}
tellraw @s {"rawtext":[{"translate":"time.playedSecond = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 用于设定岩浆溢出的剩余时间"}]}
tellraw @s {"rawtext":[{"translate":"time.lavaWarningLeft = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=lavaWarningLeft]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 饱和度刷新频率，每20秒给予1次饱和 256"}]}
tellraw @s {"rawtext":[{"translate":"time.saturationSecond = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=saturationSecond]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 音效播放器：铁砧，为2时播放音效"}]}
tellraw @s {"rawtext":[{"translate":"time.soundAnvilTicker = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=soundAnvilTicker]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 音效播放器：信标，为2时播放音效"}]}
tellraw @s {"rawtext":[{"translate":"time.soundBeaconTicker = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=soundBeaconTicker]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 每1刻加1分，每20刻归零"}]}
tellraw @s {"rawtext":[{"translate":"time.tick = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=tick]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 关卡剩余时间，单位秒"}]}
tellraw @s {"rawtext":[{"translate":"time.timeLeft = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeLeft]"}}]}}]}

tellraw @s {"rawtext":[{"translate":"§7# 时间线"}]}
tellraw @s {"rawtext":[{"translate":"time.timeline = %%s","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeline]"}}]}}]}
