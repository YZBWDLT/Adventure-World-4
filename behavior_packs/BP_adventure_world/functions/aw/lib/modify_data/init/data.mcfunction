# ===== 数据重置 =====
# 重置游戏数据，重置记分板、变量和标记实体到默认值下
# 调用此方法时：无需修饰。

# --- 常加载区域重置 ---
    tickingarea add -55 0 -55 60 0 120 "villageArea"
    tickingarea add -64 0 127 -128 0 -64 "gamingArea1"
    tickingarea add -129 0 127 -256 0 -64 "gamingArea2"
    tickingarea add 1 0 169 -91 0 261 "oceanArea"

# --- 记分板重置 ---
    ## 激活状态记分项
        scoreboard objectives add active dummy "激活状态"
    ## 数据记分项
        scoreboard objectives add data dummy "数据"
    ## 设置记分项
        scoreboard objectives add settings dummy "设置"
    ## 记录记分项
        scoreboard objectives add record dummy "记录"
    ## 时间记分项
        scoreboard objectives add time dummy "时间"

    ## 玩家在线数据记分项
        scoreboard objectives add isOnline dummy "玩家在线数据"
    ## 死亡状态记分项
        scoreboard objectives add deathState dummy "死亡状态"
    ## 死亡次数记分项
        scoreboard objectives add deathCount dummy "死亡次数"
    ## 击杀数记分项
        scoreboard objectives add killCount dummy "击杀数"
    ## 生命值记分项
        scoreboard objectives add health dummy "§c❤"
        scoreboard objectives setdisplay belowname health
    ## 游戏 ID 记分项
        scoreboard objectives add gameId dummy "游戏 ID"
    ## 旁观者记分项
        scoreboard objectives add spectator dummy "旁观者状态"

# --- 数据变量重置 ---

    ## 本局游戏 ID，与玩家的 gameId.@s 一致时则为本次游戏
        scoreboard players random gameId data 1000 9999

    ## 玩家数据
        ### 玩家当前死亡次数
            scoreboard players set @a deathCount 0
        ### 玩家当前死亡状态，0：存活，1：刚刚死亡（还未记录死亡榜），2：长期死亡
            scoreboard players add @a deathState 0
        ### 玩家击杀数
            scoreboard players set @a killCount 0
        ### 玩家是否在线，0：刚进入游戏，1：在线
            scoreboard players set @a isOnline 1
        ### 玩家生命值
            scoreboard players set @a health 20
        ### 玩家当前的游戏 ID，与 data.gameId 一致时则为本次游戏
            execute as @a run scoreboard players operation @s gameId = gameId data
        ### 玩家当前的旁观状态，0：未旁观，1：旁观中，2：启用主动旁观
            scoreboard players set @a spectator 0

    ## 基础时间数据
        ### 每刻增加 1 分，每秒重置 1 次（单位：游戏刻）
            scoreboard players set tick time 0

    ## 时间线相关
        ### 时间线是否启用，0：禁用，1-：启用
            scoreboard players set timeline active 0
        ### 时间线，到达特定值后触发命令或函数（单位：游戏刻）
            scoreboard players set timeline time 0
        ### 时间线是否启用时间流逝	0：禁用，1-：启用	
            scoreboard players set timeLapse data 0
        ### 进行时间线设置时是否保留原有的时间线值，0：不保留，1：保留
            scoreboard players set keepValue data 0

    ## 音效控制器相关
        ### 音效播放器类型，按不同值播放不同的音效	0：禁用，1-：启用
            scoreboard players set sound active 0
        ### 音效播放器，为 0 时触发特定音效（单位：游戏刻）
            scoreboard players set sound time 0
    
    ## 设置相关
        ### 开发者模式是否启用，0：禁用，1：启用	
            scoreboard players set developerMode settings 0
        ### 剧情模式是否启用，0：禁用，1：启用
            scoreboard players set storyMode settings 0
        ### 地图难度
            scoreboard players set difficulty settings 1
        ### 额外地图难度，直接累加到地图难度（基础值）上
            scoreboard players set extraDifficulty settings 0
        ### 二周目的关卡设置
            scoreboard players set level settings 0

    ## 关卡数据相关
        ### 当前正在进行的章节数，0：开始前&村庄，1-7：游戏章节，10：结束后的村庄
            scoreboard players set chapter data 0
        ### 当前正在进行的章节所属的关卡
            scoreboard players set level data 0
        ### 关卡是否完成，0：进行中，1：已完成
            scoreboard players set levelCompleted data 1
        ### 本关目前所处波数
            scoreboard players set wave data 1
        ### 本关目前最大波数
            scoreboard players set maxWave data 1
        ### 关卡完成倒计时，在怪物全部被消灭后还有多久完成关卡，仅在部分有岩浆怪的关卡中使用（单位：游戏刻）
            scoreboard players set levelCompleteCountdown time 0
        ### 是否正在 X-Y（1<=X<=7, Y!=0）的游玩状态，0：未处于游玩状态，1：正处于游玩状态
            scoreboard players set gaming data 0
        ### 是否正在暂停游戏，0：未暂停，1：暂停
            scoreboard players set pausing data 0
        ### 是否为单关卡试炼，0：全流程，1：单关卡
            scoreboard players set isSingleLevel data 0

    ## 游玩时长
        ### 玩家游玩的时长，仅限开始游戏后记录（单位：秒）
            scoreboard players set playedSecond time 0
        ### 玩家游玩的时长，仅限开始游戏后记录（单位：分钟）
            scoreboard players set playedMinute time 0

    ## 实体数目
        ### 玩家总人数
            scoreboard players set playerAmount data 0
        ### 存活的玩家人数
            scoreboard players set alivePlayerAmount data 0
        ### 怪物数，在 4-4 排除守卫者
            scoreboard players set monsterAmount data 0

    ## 失败次数
        ### 本关的失败次数
            scoreboard players set failedCount.thisLevel data 0
        ### 总失败次数
            scoreboard players set failedCount.allLevels data 0

    ## 当前使用的客户端，0：国际版，1：中国版	
        scoreboard players set client data 0
    
    ## 状态标记变量
        ### 是否启用传声石结晶，0：禁用，1：启用
            scoreboard players set allowAcousticStoneCrystal data 0
        ### 是否启用退出，0：禁用，1：启用
            scoreboard players set allowQuit data 1
        ### NPC 是否允许交互，0：禁用，1：启用
            scoreboard players set allowNpcInteraction data 1
        ### 是否允许移除掉落物实体，0：不允许，1：允许
            scoreboard players set allowRemoveItemEntity data 1
        ### 是否允许在开始游戏时传送玩家，0：不允许，1：允许
            scoreboard players set allowTpPlayerWhenStart data 1
        ### 是否有玩家启用了创造模式作弊，0：无，1：有
            scoreboard players set hasCheat data 0
        ### 是否有玩家使用过主药水或副药水，0：没有，1：有
            scoreboard players set potionUsed data 0
