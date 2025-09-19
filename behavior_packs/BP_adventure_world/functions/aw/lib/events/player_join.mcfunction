# ===== 事件：玩家进入游戏 =====
# 当玩家进入游戏后，执行的命令
# 调用此方法时：仅aw/system/main函数可执行，需修饰执行者和执行位置为重进玩家及其位置（execute as @a[scores={isOnline=0}] at @s）。

# --- 更新玩家数据 ---
    scoreboard players add @s deathCount 0
    scoreboard players add @s killCount 0
    scoreboard players set @s health 20
    scoreboard players set @s[scores={spectator=!2}] spectator 0
    fog @s remove gameFog

    ## 检查是否跨局游戏，如果是则清空击杀数和死亡数，并重置游戏 ID
        scoreboard players add @s gameId 0
        execute unless score @s gameId = gameId data run scoreboard players set @s deathCount 0
        execute unless score @s gameId = gameId data run scoreboard players set @s killCount 0
        execute unless score @s gameId = gameId data run scoreboard players operation @s gameId = gameId data
    
    ## 更新玩家游戏模式，若玩家启用了主动旁观就先设置为冒险（游戏内会自动设置为旁观）
        gamemode adventure @s[scores={spectator=2}]

# --- 获取变量 ---
    ## 玩家数
        function aw/lib/get_data/player_amount

# --- 移除玩家物品和药效 ---
    execute if score playerAmount data matches 2.. run clear @s
    effect @s clear

# --- 多人情况下的提示 ---
    ## 提示玩家进行设置
    execute if score playerAmount data matches 2.. run tellraw @s {"rawtext":[{"translate":"§7§l为保证游戏体验，请提前进行如下设置：§r\n§7* §b音频 - 音乐§7调至§b100§r\n§7* §b辅助功能 - 文本背景不透明度§7调至§b0%%§7§o（如有的话请调整）"}]}
    ## 试炼下提示所有玩家可主动旁观
    execute if score chapter data matches 1..7 if score playerAmount data matches 2 run tellraw @a {"rawtext":[{"translate":"§a您现在可以使用「主动旁观模式」了！右键（手机版长按）使用此物品会在进入关卡后直接开启旁观模式。"}]}
    execute if score chapter data matches 1..7 if score playerAmount data matches 3.. run tellraw @s {"rawtext":[{"translate":"§a您现在可以使用「主动旁观模式」了！右键（手机版长按）使用此物品会在进入关卡后直接开启旁观模式。"}]}

# --- 播放音乐 ---
    tellraw @a[scores={isOnline=!0}] {"rawtext":[{"translate":"§7检测到有玩家进入游戏，为确保游戏体验，将重新播放场景音乐"}]}
    function aw/lib/events/play_music

# --- 给予玩家药水 ---
    tag @s add supplyAllPotions

# --- 执行各关卡内部函数 ---

## 开幕&村庄剧情
    execute if score chapter data matches 0 run function aw/levels/open/player_rejoin
## 正式关卡
    execute if score chapter data matches 1 run function aw/levels/chapter1/player_rejoin
    execute if score chapter data matches 2 run function aw/levels/chapter2/player_rejoin
    execute if score chapter data matches 3 run function aw/levels/chapter3/player_rejoin
    execute if score chapter data matches 4 run function aw/levels/chapter4/player_rejoin
    execute if score chapter data matches 5 run function aw/levels/chapter5/player_rejoin
    execute if score chapter data matches 6 run function aw/levels/chapter6/player_rejoin
    execute if score chapter data matches 7 run function aw/levels/chapter7/player_rejoin
## 结尾
    execute if score chapter data matches 10 run function aw/levels/end/player_rejoin
## 暂停时
    execute if score pausing data matches 1 run function aw/levels/pause/events/player_rejoin

# --- 更正游戏规则与游戏模式 ---
# 仅中国版，仅1人时执行，以适应中国版电脑版的要求
    function aw/lib/get_data/client
    execute if score client data matches 1 if score playerAmount data matches 0 run function aw/lib/modify_data/init/gamerule
    execute if score client data matches 1 if score playerAmount data matches 0 run gamemode adventure @s
    execute if score client data matches 1 if score playerAmount data matches 0 run weather clear
