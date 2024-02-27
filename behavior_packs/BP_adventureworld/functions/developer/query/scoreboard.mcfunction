# ===== 记分板查询函数 =====
# 调用此函数以查询所有记分板的值 | 仅限开发者模式下启用

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}

## --- 开启开发者模式时 ---
tellraw @s[scores={temp=1}] {"rawtext":[{"text":"下文反馈格式: (记分项).(标记名) = (值)，并反馈注释\n§e*黄色：假名（即非标记实体）变量 §b*蓝色：玩家个人数据"}]}

## === 玩家个人数据 ===

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== 玩家个人数据记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bcrosshair.@s = %%s §7# 准星启用状态","with":{"rawtext":[{"score":{"objective":"crosshair","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bdeathTimes.@s = %%s §7# 玩家死亡次数","with":{"rawtext":[{"score":{"objective":"deathTimes","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§binLevelArea.@s = %%s §7# 玩家所在的关卡区域","with":{"rawtext":[{"score":{"objective":"inLevelArea","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bisAlive.@s = %%s §7# 玩家存活状态，0=游戏时死亡，1=游戏时存活，2=未在游戏中","with":{"rawtext":[{"score":{"objective":"isAlive","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bisHoldingHelmet.@s = %%s §7# 玩家是否手持过钻石头盔，0=未手持过，1=正在手持，2=手持过","with":{"rawtext":[{"score":{"objective":"isHoldingHelmet","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bisHoldingBoots.@s = %%s §7# 玩家是否手持过钻石靴子，0=未手持过，1=正在手持，2=手持过","with":{"rawtext":[{"score":{"objective":"isHoldingBoots","name":"@s"}}]}}]}

## === 激活数据 active ===
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== active记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.levelCompleteDelay = %%s §7# 关卡完成延迟（启用值），0：无延迟完成关卡，大于0：按照该值延迟完成关卡，-1：永远不按照怪物数目完成关卡","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=levelCompleteDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.monsterSummonDelay = %%s §7# 怪物生成延迟（启用值），0：无延迟，1：有延迟","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=monsterSummonDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.soundPlayer = %%s §7# 音效播放器，0：不激活，不为0：根据本值决定播放何种音效","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.timeline = %%s §7# 时间线控制器：为1时开始计时","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=timeline]"}}]}}]}

## === 后台数据 ===
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== data记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.alivePlayersAmount = %%s §7# 记录存活玩家数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=alivePlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.allPlayersAmount = %%s §7# 记录所有玩家数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=allPlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§edata.allFailedTimes = %%s §7# 记录失败次数","with":{"rawtext":[{"score":{"objective":"data","name":"allFailedTimes"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.failedTimes = %%s §7# 记录失败次数","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=failedTimes]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.hookshotAmount = %%s §7# 记录绳枪数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=hookshotAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.level = %%s §7# 记录关卡数据，三位数分别为(章节)(关卡)(是否已完成)","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§edata.maxMonsterAmount = %%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"data","name":"maxMonsterAmount"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.maxWave = %%s §7# 记录该关卡最大波数，仅在需要时获取","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=maxWave]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.monsterAmount = %%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=monsterAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.randomLocation = %%s §7# 随机怪物刷新位置","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=randomLocation]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.randomMonster = %%s §7# 随机怪物种类","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=randomMonster]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.wave = %%s §7# 记录波数数据","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}

## === 设置数据 settings ===

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== settings记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.alivePlayersAmount = %%s §7# 存活玩家数目是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=alivePlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.allPlayersAmount = %%s §7# 所有玩家数目是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=allPlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.arrowLimitTest = %%s §7# 箭上限是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=arrowLimitTest]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.developerMode = %%s §7# 开发者模式","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=developerMode]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.isNetease = %%s §7# 记录是否为netease版本","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=isNetease]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.itemLimitTest = %%s §7# 物品上限是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=itemLimitTest]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.potionLimitTest = %%s §7# 药水上限是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=potionLimitTest]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.respawnInNewWave = %%s §7# 是否在新的波次下复活玩家，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=respawnInNewWave]"}}]}}]}



## === 缓存数据 temp&temp2&temp3 ===
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== temp类记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp.level = %%s §7# 通过位数分离器获取的章节数据","with":{"rawtext":[{"score":{"objective":"temp","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp.respawner = %%s §7# 重生点随机数据","with":{"rawtext":[{"score":{"objective":"temp","name":"@e[name=respawner]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§btemp.@s = %%s §7# 不定意义","with":{"rawtext":[{"score":{"objective":"temp","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp2.level = %%s §7# 通过位数分离器获取的关卡数据","with":{"rawtext":[{"score":{"objective":"temp2","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§btemp2.@s = %%s §7# 通过位数分离器获取的当前所在关卡章节","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"temp3.level = %%s §7# 通过位数分离器获取的游玩状态数据，1=已完成关卡，0=未完成关卡","with":{"rawtext":[{"score":{"objective":"temp3","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§btemp3.@s = %%s §7# 通过位数分离器获取的当前所在关卡数","with":{"rawtext":[{"score":{"objective":"temp3","name":"@s"}}]}}]}

## === 时间数据 time ===
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== time记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.levelCompleteDelay = %%s §7# 关卡完成延迟，0：无延迟完成关卡，大于0：按照该值延迟完成关卡，-1：永远不按照怪物数目完成关卡","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=levelCompleteDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.monsterRefreshLeft = %%s §7# 怪物刷新频率","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=monsterRefreshLeft]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.monsterSummonDelay = %%s §7# 怪物生成延迟","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=monsterSummonDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.playedMinute = %%s §7# 游玩时长（分钟），从试炼开始时开始计时","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.playedSecond = %%s §7# 游玩时长（秒），从试炼开始时开始计时","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedSecond]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.lavaWarningLeft = %%s §7# 用于设定岩浆溢出的剩余时间","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=lavaWarningLeft]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.soundPlayer = %%s §7# 音效播放器，单位：刻","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.tick = %%s §7# 每1刻加1分，每20刻归零","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=tick]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.timeLeft = %%s §7# 关卡剩余时间，单位秒","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeLeft]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"time.timeline = %%s §7# 时间线","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=timeline]"}}]}}]}

scoreboard players set @s temp 0