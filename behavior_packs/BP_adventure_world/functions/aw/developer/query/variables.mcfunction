# ===== 变量查询 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "格式：<记分项>.<名称>=<值>" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§e黄色：使用标记实体存储的数据" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§b青色：玩家数据" } ] }

## 玩家数据
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== 玩家数据 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bdeathCount.@s = §a%%s §7| 玩家当前死亡次数", "with": { "rawtext": [ { "score":{ "objective": "deathCount", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bdeathState.@s = §a%%s §7| 玩家当前死亡状态 | 0：未死亡，1：刚刚死亡，2：已死亡", "with": { "rawtext": [ { "score":{ "objective": "deathState", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bhealth.@s = §a%%s §7| 玩家生命值", "with": { "rawtext": [ { "score":{ "objective": "health", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bkillCount.@s = §a%%s §7| 玩家击杀数", "with": { "rawtext": [ { "score":{ "objective": "killCount", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bisOnline.@s = §a%%s §7| 玩家是否在线 | 0：刚进入游戏，1：在线", "with": { "rawtext": [ { "score":{ "objective": "isOnline", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bgameId.@s = §a%%s §7| 玩家当前的游戏 ID，与 data.gameId 一致时则为本次游戏", "with": { "rawtext": [ { "score":{ "objective": "gameId", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bspectator.@s = §a%%s §7| 玩家当前的旁观状态，0：未旁观，1：旁观中，2：启用主动旁观", "with": { "rawtext": [ { "score":{ "objective": "spectator", "name": "@s" } } ] } } ] }

## active
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== active记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "active.sound = §a%%s §7| 音效播放器类型，按不同值播放不同的音效 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "active", "name": "sound" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "active.timeline = §a%%s §7| 时间线是否启用 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "active", "name": "timeline" } } ] } } ] }

## data
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== data记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.alivePlayerAmount = §a%%s §7| 存活的玩家人数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "alivePlayerAmount" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowAcousticStoneCrystal = §a%%s §7| 是否启用传声石结晶 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowAcousticStoneCrystal" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowNpcInteraction = §a%%s §7| NPC 是否允许交互 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowNpcInteraction" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowQuit = §a%%s §7| 当前是否启用退出 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "couldNotQuit" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowRemoveItemEntity = §a%%s §7| 是否允许移除掉落物实体 | 0：不允许，1：允许", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowRemoveItemEntity" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowTpPlayerWhenStart = §a%%s §7| 是否允许在开始游戏时传送玩家 | 0：不允许，1：允许", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowTpPlayerWhenStart" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.chapter = §a%%s §7| 当前正在进行的章节数 | 0：开始前&村庄，1-7：游戏章节，10：结束后的村庄", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "chapter" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.client = §a%%s §7| 当前使用的客户端 | 0：国际版，1：中国版", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "client" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.failedCount.allLevels = §a%%s §7| 总失败次数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "failedCount.allLevels" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.failedCount.thisLevel = §a%%s §7| 本关的失败次数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "failedCount.thisLevel" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.gameId = §a%%s §7| 本局游戏 ID，与玩家的 gameId.@s 一致时则为本次游戏", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "gameId" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.gaming = §a%%s §7| 是否正在 X-Y（1<=X<=7, Y!=0）的游玩状态 | 0：未处于游玩状态，1：正处于游玩状态", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "gaming" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.hasCheat = §a%%s §7| 是否有玩家启用了创造模式作弊 | 0：无，1：有", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "hasCheat" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.keepValue = §a%%s §7| 进行时间线设置时是否保留原有的时间线值 | 0：不保留，1：保留", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "keepValue" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.level = §a%%s §7| 当前正在进行的章节所属的关卡", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "level" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.levelCompleted = §a%%s §7| 关卡是否完成 | 0：进行中，1：已完成", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "levelCompleted" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.maxWave = §a%%s §7| 本关目前最大波数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "maxWave" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.monsterAmount = §a%%s §7| 怪物数，在 4-4 排除守卫者", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "monsterAmount" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.pausing = §a%%s §7| 是否正在暂停游戏 | 0：未暂停，1：暂停", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "pausing" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.playerAmount = §a%%s §7| 玩家总人数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "playerAmount" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.potionUsed = §a%%s §7| 是否有玩家使用过主药水或副药水 | 0：没有，1：有", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "potionUsed" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.timeLapse = §a%%s §7| 时间线是否启用时间流逝 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "timeLapse" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.wave = §a%%s §7| 本关目前所处波数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "wave" } } ] } } ] }

## record
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== record记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.multiPlayer.difficulty4 = §a%%s §7| 多人成就[挑战极限]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.multiPlayer.difficulty4" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.multiPlayer.finishMap = §a%%s §7| 多人成就[齐心协力]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.multiPlayer.finishMap" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.multiPlayer.killLessThan50 = §a%%s §7| 多人成就[躺赢]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.multiPlayer.killLessThan50" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.multiPlayer.killMoreThan200 = §a%%s §7| 多人成就[全靠我带飞]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.multiPlayer.killMoreThan200" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.multiPlayer.neverDied = §a%%s §7| 多人成就[人多力量大]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.multiPlayer.neverDied" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.multiPlayer.speedrun = §a%%s §7| 多人成就[势如破竹]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.multiPlayer.speedrun" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.singlePlayer.difficulty2 = §a%%s §7| 单人成就[挑战自我]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.singlePlayer.difficulty2" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.singlePlayer.difficulty3 = §a%%s §7| 单人成就[举步维艰]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.singlePlayer.difficulty3" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.singlePlayer.difficulty4 = §a%%s §7| 单人成就[这不可能！]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.singlePlayer.difficulty4" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.singlePlayer.finishMap = §a%%s §7| 单人成就[神剑的恩惠]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.singlePlayer.finishMap" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.singlePlayer.neverDied = §a%%s §7| 单人成就[让田英睡觉去吧！]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.singlePlayer.neverDied" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.singlePlayer.noPotion = §a%%s §7| 单人成就[纯天然]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.singlePlayer.noPotion" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.achievement.singlePlayer.speedrun = §a%%s §7| 单人成就[别挡道，我很急！]的获取状态 | 0：未获取，1：已获取", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "achievement.singlePlayer.speedrun" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestScore.difficulty1 = §a%%s §7| 最佳分数（难度 1）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestScore.difficulty1" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestScore.difficulty2 = §a%%s §7| 最佳分数（难度 2）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestScore.difficulty2" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestScore.difficulty3 = §a%%s §7| 最佳分数（难度 3）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestScore.difficulty3" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestScore.difficulty4 = §a%%s §7| 最佳分数（难度 4）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestScore.difficulty4" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.multiPlayer.difficulty1.minute = §a%%s §7| 多人模式的最佳游戏时间（难度 1，单位：分钟）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.multiPlayer.difficulty1.minute" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.multiPlayer.difficulty1.second = §a%%s §7| 多人模式的最佳游戏时间（难度 1，单位：秒）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.multiPlayer.difficulty1.second" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.multiPlayer.difficulty2.minute = §a%%s §7| 多人模式的最佳游戏时间（难度 2，单位：分钟）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.multiPlayer.difficulty2.minute" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.multiPlayer.difficulty2.second = §a%%s §7| 多人模式的最佳游戏时间（难度 2，单位：秒）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.multiPlayer.difficulty1.second" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.multiPlayer.difficulty3.minute = §a%%s §7| 多人模式的最佳游戏时间（难度 3，单位：分钟）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.multiPlayer.difficulty3.minute" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.multiPlayer.difficulty3.second = §a%%s §7| 多人模式的最佳游戏时间（难度 3，单位：秒）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.multiPlayer.difficulty1.second" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.multiPlayer.difficulty4.minute = §a%%s §7| 多人模式的最佳游戏时间（难度 4，单位：分钟）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.multiPlayer.difficulty4.minute" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.multiPlayer.difficulty4.second = §a%%s §7| 多人模式的最佳游戏时间（难度 4，单位：秒）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.multiPlayer.difficulty1.second" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.singlePlayer.difficulty1.minute = §a%%s §7| 单人模式的最佳游戏时间（难度 1，单位：分钟）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.singlePlayer.difficulty1.minute" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.singlePlayer.difficulty1.second = §a%%s §7| 单人模式的最佳游戏时间（难度 1，单位：秒）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.singlePlayer.difficulty1.second" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.singlePlayer.difficulty2.minute = §a%%s §7| 单人模式的最佳游戏时间（难度 2，单位：分钟）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.singlePlayer.difficulty2.minute" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.singlePlayer.difficulty2.second = §a%%s §7| 单人模式的最佳游戏时间（难度 2，单位：秒）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.singlePlayer.difficulty1.second" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.singlePlayer.difficulty3.minute = §a%%s §7| 单人模式的最佳游戏时间（难度 3，单位：分钟）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.singlePlayer.difficulty3.minute" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.singlePlayer.difficulty3.second = §a%%s §7| 单人模式的最佳游戏时间（难度 3，单位：秒）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.singlePlayer.difficulty1.second" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.singlePlayer.difficulty4.minute = §a%%s §7| 单人模式的最佳游戏时间（难度 4，单位：分钟）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.singlePlayer.difficulty4.minute" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.bestTime.singlePlayer.difficulty4.second = §a%%s §7| 单人模式的最佳游戏时间（难度 4，单位：秒）", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "bestTime.singlePlayer.difficulty1.second" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.mapCompletedTimes = §a%%s §7| 地图通关次数", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "mapCompletedTimes" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "record.score = §a%%s §7| 本次试炼的分数", "with": { "rawtext": [ { "score":{ "objective": "record", "name": "score" } } ] } } ] }

## settings
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== settings记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "settings.developerMode = §a%%s §7| 开发者模式是否启用 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "settings", "name": "developerMode" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "settings.difficulty = §a%%s §7| 地图难度", "with": { "rawtext": [ { "score":{ "objective": "settings", "name": "difficulty" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "settings.extraDifficulty = §a%%s §7| 额外地图难度，直接累加到地图难度（基础值）上", "with": { "rawtext": [ { "score":{ "objective": "settings", "name": "extraDifficulty" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "settings.storyMode = §a%%s §7| 剧情模式是否启用 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "settings", "name": "storyMode" } } ] } } ] }

## time
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== time记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.levelCompleteCountdown = §a%%s §7| 关卡完成倒计时，在怪物全部被消灭后还有多久完成关卡，仅在部分有岩浆怪的关卡中使用 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "levelCompleteCountdown" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.sound = §a%%s §7| 音效播放器，为0时触发特定音效 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "sound" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.tick = §a%%s §7| 每刻增加1分，每秒重置1次 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "tick" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.timeline = §a%%s §7| 时间线，到达特定值后触发命令或函数 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "timeline" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.playedSecond = §a%%s §7| 玩家游玩的时长，仅限开始游戏后记录 | 单位：秒", "with": { "rawtext": [ { "score": { "objective": "time", "name": "playedSecond" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.playedMinute = §a%%s §7| 玩家游玩的时长，仅限开始游戏后记录 | 单位：分钟", "with": { "rawtext": [ { "score": { "objective": "time", "name": "playedMinute" } } ] } } ] }

## 标签型变量
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== 标签型变量 =====" } ] }

execute if score developerMode settings matches 1 run tellraw @s[tag=outOfBorder] { "rawtext": [ { "translate": "outOfBorder = §atrue §7| 玩家是否在旁观模式下出界" } ] }
execute if score developerMode settings matches 1 run tellraw @s[tag=!outOfBorder] { "rawtext": [ { "translate": "outOfBorder = §efalse §7| 玩家是否在旁观模式下出界" } ] }

execute if score developerMode settings matches 1 run tellraw @s[tag=supplyArrow] { "rawtext": [ { "translate": "supplyArrow = §atrue §7| 是否为玩家提供箭" } ] }
execute if score developerMode settings matches 1 run tellraw @s[tag=!supplyArrow] { "rawtext": [ { "translate": "supplyArrow = §efalse §7| 是否为玩家提供箭" } ] }

execute if score developerMode settings matches 1 run tellraw @s[tag=supplyAllPotions] { "rawtext": [ { "translate": "supplyAllPotions = §atrue §7| 是否为玩家提供药水（全种类）" } ] }
execute if score developerMode settings matches 1 run tellraw @s[tag=!supplyAllPotions] { "rawtext": [ { "translate": "supplyAllPotions = §efalse §7| 是否为玩家提供药水（全种类）" } ] }
