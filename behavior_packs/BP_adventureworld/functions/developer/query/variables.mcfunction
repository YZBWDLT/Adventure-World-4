# ===== 记分板查询函数 =====
# 调用此函数以查询所有记分板的值 | 仅限开发者模式下启用

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}

## --- 开启开发者模式时 ---
tellraw @s[scores={temp=1}] {"rawtext":[{"text":"下文反馈格式: (记分项).(标记名) = (值)，并反馈注释\n§e*黄色：假名（即非标记实体）变量 §b*蓝色：玩家个人数据"}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== 玩家个人数据记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bdeathTimes.@s = §a%%s §7# 玩家死亡次数","with":{"rawtext":[{"score":{"objective":"deathTimes","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bisAlive.@s = §a%%s §7# 玩家存活状态，0：游戏时死亡，1：游戏时存活，2：未在游戏中","with":{"rawtext":[{"score":{"objective":"isAlive","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bisOnline.@s = §a%%s §7# 玩家是否为在线的玩家，0：不在线，1：在线","with":{"rawtext":[{"score":{"objective":"isOnline","name":"@s"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§bposition.@s = §a%%s §7# 玩家所在的关卡区域","with":{"rawtext":[{"score":{"objective":"position","name":"@s"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== active记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.dialogue = §a%%s §7# 对话控制器，0：不启用对话，1：启用不固定视角的对话，2：启用固定视角的对话","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=dialogue]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.levelCompleteDelay = §a%%s §7# 关卡完成延迟（启用值），0：无延迟完成关卡，大于0：按照该值延迟完成关卡，-1：永远不按照怪物数目完成关卡","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=levelCompleteDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.monsterSummonDelay = §a%%s §7# 怪物生成延迟（启用值），0：无延迟，1：有延迟","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=monsterSummonDelay]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.soundPlayer = §a%%s §7# 音效播放器，0：不激活，不为0：根据本值决定播放何种音效","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=soundPlayer]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"active.timeline = §a%%s §7# 时间线控制器：为1时开始计时","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=timeline]"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== data记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.alivePlayersAmount = §a%%s §7# 记录存活玩家数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=alivePlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§edata.allFailedTimes = §a%%s §7# 记录失败次数","with":{"rawtext":[{"score":{"objective":"data","name":"allFailedTimes"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.failedTimes = §a%%s §7# 记录失败次数","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=failedTimes]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.hookshotAmount = §a%%s §7# 记录绳枪数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=hookshotAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.isNetease = §a%%s §7# 记录是否为netease版本","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=isNetease]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.level = §a%%s §7# 记录关卡数据，三位数分别为(章节)(关卡)(是否已完成)","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=level]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§edata.maxMonsterAmount = §a%%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"data","name":"maxMonsterAmount"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.maxPlayersAmount = §a%%s §7# 记录所有玩家数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=maxPlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.maxWave = §a%%s §7# 记录该关卡最大波数，仅在需要时获取","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=maxWave]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.monsterAmount = §a%%s §7# 记录怪物数目","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=monsterAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.randomLocation = §a%%s §7# 随机怪物刷新位置","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=randomLocation]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.randomMonster = §a%%s §7# 随机怪物种类","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=randomMonster]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"data.wave = §a%%s §7# 记录波数数据","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=wave]"}}]}}]}

tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"§l===== settings记分项 ====="}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.alivePlayersAmount = §a%%s §7# 存活玩家数目是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=alivePlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.arrowLimitTest = §a%%s §7# 箭上限是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=arrowLimitTest]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.developerMode = §a%%s §7# 开发者模式,0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=developerMode]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.itemLimitTest = §a%%s §7# 物品上限是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=itemLimitTest]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.maxPlayersAmount = §a%%s §7# 所有玩家数目是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=maxPlayersAmount]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.potionLimitTest = §a%%s §7# 药水上限是否启用检测，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=potionLimitTest]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.respawnInNewWave = §a%%s §7# 是否在新的波次下复活玩家，0：不启用，1：启用","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=respawnInNewWave]"}}]}}]}
tellraw @s[scores={temp=1}] {"rawtext":[{"translate":"settings.simulatedLevel = §a%%s §7# 模拟关卡号，用于开发者模式下的怪物调试","with":{"rawtext":[{"score":{"objective":"settings","name":"@e[name=simulatedLevel]"}}]}}]}
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

tellraw @s {"rawtext":[{"translate":"§l===== 标签类型（tag）项 ====="}]}

tellraw @s[scores={temp=1},tag=!bootsHeld] {"rawtext":[{"translate":"§ebootsHeld = §afalse §7# 玩家是否手持过钻石靴子（aw:diamond_boots） | true=是，false=否"}]}
tellraw @s[scores={temp=1},tag=bootsHeld] {"rawtext":[{"translate":"§ebootsHeld = §atrue §7# 玩家是否手持过钻石靴子（aw:diamond_boots） | true=是，false=否"}]}

tellraw @s[scores={temp=1},tag=!helmetHeld] {"rawtext":[{"translate":"§ehelmetHeld = §afalse §7# 玩家是否手持过钻石头盔（aw:diamond_helmet） | true=是，false=否"}]}
tellraw @s[scores={temp=1},tag=helmetHeld] {"rawtext":[{"translate":"§ehelmetHeld = §atrue §7# 玩家是否手持过钻石头盔（aw:diamond_helmet） | true=是，false=否"}]}

tellraw @s[scores={temp=1},tag=!matchLevelFailed] {"rawtext":[{"translate":"§ematchLevelFailed = §afalse §7# 判断退出重进的玩家的关卡数据是否和自己的位置一致 | true=是，false=否"}]}
tellraw @s[scores={temp=1},tag=matchLevelFailed] {"rawtext":[{"translate":"§ematchLevelFailed = §atrue §7# 判断退出重进的玩家的关卡数据是否和自己的位置一致 | true=是，false=否"}]}

tellraw @s[scores={temp=1},tag=!virtualCrosshairEnabled] {"rawtext":[{"translate":"§evirtualCrosshairEnabled = §afalse §7# 玩家是否启用了虚拟准星 | true=是，false=否"}]}
tellraw @s[scores={temp=1},tag=virtualCrosshairEnabled] {"rawtext":[{"translate":"§evirtualCrosshairEnabled = §atrue §7# 玩家是否启用了虚拟准星 | true=是，false=否"}]}



scoreboard players set @s temp 0