# ===== 主函数 =====
# 本地图的相关文档，可以在群文档（https://groupdocs.pages.dev 或 https://docs.nekoawa.com）的群资源 - 冒险小世界：剑之试炼 - 地图文档 页面中找到。

# --- 变量准备 ---
    ## 计时器
        function aw/system/timer
    ## 其他的变量准备
        ### 玩家数量
            function aw/lib/get_data/player_amount
        ### 怪物数量
            function aw/lib/get_data/monster_amount
        ### 地图难度
            function aw/lib/get_data/difficulty
        ### 游玩状态判断
            scoreboard players set gaming data 0
            execute if score chapter data matches 1..7 unless score level data matches 0 if score levelCompleted data matches 0 run scoreboard players set gaming data 1

# --- 防退出与防作弊 ---
    ## 防退出，以防止重新进入的玩家扰乱系统运行，进行必要设置
        scoreboard players add @a isOnline 0
        execute as @a[scores={isOnline=0}] at @s run function aw/lib/events/player_join
        scoreboard objectives remove isOnline
        scoreboard objectives add isOnline dummy "在线数据"
        scoreboard players set @a isOnline 1
    ## 防作弊
        ### 检测到玩家开启创造后则降级评分为F-
        execute if entity @a[m=creative] if score hasCheat data matches 0 run scoreboard players set hasCheat data 1

# --- 控制器 ---
    ## 音效控制器 | 激活且倒计时为0时执行
        execute if score sound active matches 1.. if score sound time matches 0 run function aw/system/sound
    ## 玩家死亡 | 控制死亡榜和玩家死亡后运行的命令
        scoreboard players set @a[scores={deathState=!2}] deathState 1
        scoreboard players set @e[type=player] deathState 0
        execute as @a[scores={deathState=1}] at @s run function aw/lib/events/player_die
        scoreboard players set @a[scores={deathState=1}] deathState 2

    ## 物品控制器 | 控制物品的上限、补充、附魔与耐久修复，每秒运行一次
        execute if score tick time matches 1 run function aw/system/items
    ## 药水控制器 | 控制药水的药效、上限和补充，每秒运行一次
        execute if score tick time matches 2 run function aw/system/potions
    ## 箭控制器 | 控制箭的上限和补充，每秒运行一次
        execute if score tick time matches 3 run function aw/system/arrows
    ## 事件控制器 | 控制杂项内容的执行
        ### 全局饱和
            execute if score tick time matches 4 run effect @a saturation 1 10 true
        ### 清除怪物和生成器
            execute if score tick time matches 5 if score levelCompleted data matches !0 run kill @e[type=aw:spawner]
            execute if score tick time matches 5 if score levelCompleted data matches !0 run kill @e[family=monster]
        ### 关闭随机刻，以防止场景被破坏
            gamerule randomtickspeed 0
        ### 开发者模式下的更改游戏模式
            execute if score developerMode settings matches 1 run function aw/lib/modify_data/developer_gamemode
        ### 若从多人模式转变回单人模式，将处于主动旁观模式的玩家调整为正常玩家并提醒
            execute if score playerAmount data matches 1 if score levelCompleted data matches !0 run tellraw @a[scores={spectator=2}] {"rawtext":[{"translate":"§c游戏已变为单人模式，你的主动旁观已自动取消"}]}
            execute if score playerAmount data matches 1 if score levelCompleted data matches !0 run scoreboard players set @a[scores={spectator=2}] spectator 0

# --- 关卡 ---
    ## 时间线 | 必须在有玩家时执行，防止在退出重进后产生一些奇怪问题
        execute if score playerAmount data matches 1.. if score timeline active matches 1.. run function aw/system/timeline
    ## 信息板 | 仅当试炼后开启
        execute if score chapter data matches 1..7 run function aw/system/infoboard

