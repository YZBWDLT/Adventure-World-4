# ===== 开始游戏 =====
# 7-5 | 必须由初次进入的玩家执行

# --- 关卡参数 ---
## 关卡 ID
scoreboard players set level data 5
## 最大波数
scoreboard players set maxWave data 2

# --- 生成怪物 ---
function aw/levels/chapter7/level5/waves/wave_1

# --- 调用通用函数 ---
    # 必须由初次进入的玩家执行

    ## 禁止在本关传送玩家
        scoreboard players set allowTpPlayerWhenStart data 0
    ## 禁止时间流逝 | 以防在过剧情时被误判为正处于与试炼外的对话
        function aw/lib/modify_data/timeline/disable_time_lapse
    ## 调用通用函数
        function aw/lib/events/levels/start_level
    ## 重新设置副标题
        titleraw @a subtitle {"rawtext":[{"translate":"§c§l最 终 关"}]}
    ## 重新启用时间流逝 | 进行第一阶段的时间线
        function aw/lib/modify_data/timeline/enable_time_lapse

# --- 关卡特殊功能 ---
## 将时间线状态设置为 1
    scoreboard players set timeline active 1
## 打开并移除 7-4 之前的门
    execute as @e[type=aw:door] at @s run fill ~-3~~-3~3~4~3 structure_void replace barrier
    event entity @e[type=aw:door] aw:remove_immediately
## 临时变量设置
    ### 关卡阶段，BOSS 血量在1/2以上为1，在1/2以下为2
        scoreboard players set temp.stage data 1
    ### 技能倒计时，正值：触发下一个技能的倒计时；0：触发技能；负值：该技能触发后等待的倒计时
        scoreboard players random temp.skillCd time 3 10
    ### 技能等待倒计时（技能时长），应设为负值，绝对值为实际时长
        scoreboard players set temp.skillLength data -15
    ### 技能类型
        scoreboard players set temp.skillType data 0
    ### 在召唤怪物时，采用的怪物组别
        scoreboard players random temp.spawnMonsterGroup data 1 4
    ### 玩家重生倒计时记分项
        scoreboard objectives add temp.respawnTime dummy "重生时间"
    ### 玩家重生倒计时
        scoreboard players set @a temp.respawnTime 0
