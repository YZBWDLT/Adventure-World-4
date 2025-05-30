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
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bdeathTime.@s = §a%%s §7| 玩家持续处于死亡状态的时长 | 单位：游戏刻", "with": { "rawtext": [ { "score":{ "objective": "deathTime", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bkillCount.@s = §a%%s §7| 玩家击杀数", "with": { "rawtext": [ { "score":{ "objective": "killCount", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bisOnline.@s = §a%%s §7| 玩家是否在线 | 0：刚进入游戏，1：在线", "with": { "rawtext": [ { "score":{ "objective": "isOnline", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bstate.@s = §a%%s §7| 玩家当前状态 | 0：站立，1：潜行，2：爬行，3：睡觉", "with": { "rawtext": [ { "score":{ "objective": "state", "name": "@s" } } ] } } ] }

## active
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== active记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "active.sound = §a%%s §7| 音效播放器类型，按不同值播放不同的音效 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "active", "name": "sound" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "active.timeline = §a%%s §7| 时间线是否启用 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "active", "name": "timeline" } } ] } } ] }

## data
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== data记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.alivePlayerAmount = §a%%s §7| 存活的玩家人数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "alivePlayerAmount" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowAcousticStoneCrystal = §a%%s §7| 是否启用传声石结晶 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowAcousticStoneCrystal" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowArrowSupply = §a%%s §7| 是否允许补充箭 | 0：不允许，1：允许", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowArrowSupply" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowHud = §a%%s §7| 是否允许显示 HUD | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowHud" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowNpcInteraction = §a%%s §7| NPC 是否允许交互 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowNpcInteraction" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowPotionSupply = §a%%s §7| 是否允许补充药水 | 0：不允许，1：允许", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowPotionSupply" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.allowRemoveItemEntity = §a%%s §7| 是否允许移除掉落物实体 | 0：不允许，1：允许", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "allowRemoveItemEntity" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.chapter = §a%%s §7| 当前正在进行的章节数 | 0：开始前&村庄，1-7：游戏章节，10：结束后的村庄", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "chapter" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.client = §a%%s §7| 当前使用的客户端 | 0：国际版，1：中国版", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "client" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.failedCount.allLevels = §a%%s §7| 总失败次数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "failedCount.allLevels" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.failedCount.thisLevel = §a%%s §7| 本关的失败次数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "failedCount.thisLevel" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.hasCheat = §a%%s §7| 是否有玩家启用了创造模式作弊 | 0：无，1：有", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "hasCheat" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.level = §a%%s §7| 当前正在进行的章节所属的关卡", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "level" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.levelCompleted = §a%%s §7| 关卡是否完成 | 0：进行中，1：已完成", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "levelCompleted" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.maxWave = §a%%s §7| 本关目前最大波数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "maxWave" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.monsterAmount = §a%%s §7| 怪物数，在 4-4 排除守卫者", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "monsterAmount" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.playerAmount = §a%%s §7| 玩家总人数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "playerAmount" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.potionUsed = §a%%s §7| 是否有玩家使用过主药水或副药水 | 0：没有，1：有", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "potionUsed" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.timeLapse = §a%%s §7| 时间线是否启用时间流逝 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "timeLapse" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.wave = §a%%s §7| 本关目前所处波数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "wave" } } ] } } ] }

## settings
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== settings记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "settings.developerMode = §a%%s §7| 开发者模式是否启用 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "settings", "name": "developerMode" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "settings.difficulty = §a%%s §7| 地图难度", "with": { "rawtext": [ { "score":{ "objective": "settings", "name": "difficulty" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "settings.storyMode = §a%%s §7| 剧情模式是否启用 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "settings", "name": "storyMode" } } ] } } ] }

## time
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== time记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.sound = §a%%s §7| 音效播放器，为0时触发特定音效 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "sound" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.tick = §a%%s §7| 每刻增加1分，每秒重置1次 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "tick" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.timeline = §a%%s §7| 时间线，到达特定值后触发命令或函数 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "timeline" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.playedSecond = §a%%s §7| 玩家游玩的时长，仅限开始游戏后记录 | 单位：秒", "with": { "rawtext": [ { "score": { "objective": "time", "name": "playedSecond" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.playedMinute = §a%%s §7| 玩家游玩的时长，仅限开始游戏后记录 | 单位：分钟", "with": { "rawtext": [ { "score": { "objective": "time", "name": "playedMinute" } } ] } } ] }

## 标签型变量
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== 标签型变量 =====" } ] }

execute if score developerMode settings matches 1 run tellraw @s[tag=spectator] { "rawtext": [ { "translate": "spectator = §atrue §7| 玩家是否在游戏中死亡，成为旁观者" } ] }
execute if score developerMode settings matches 1 run tellraw @s[tag=!spectator] { "rawtext": [ { "translate": "spectator = §efalse §7| 玩家是否在游戏中死亡，成为旁观者" } ] }
