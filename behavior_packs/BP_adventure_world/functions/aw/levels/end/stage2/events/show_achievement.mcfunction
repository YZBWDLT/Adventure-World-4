# ===== 显示成就 =====

# 移除原有的文本展示实体
    event entity @e[type=aw:text_display,x=-27,y=1.5,z=-45,dy=5] aw:remove_immediately

# 页数
    ## 第 1 页：[单人] 神剑的恩惠 - 通过剑之试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 1 run summon aw:text_display "§b[单人] §l神剑的恩惠" -27 3.3 -45
            execute if score temp.achievementPage data matches 1 run summon aw:text_display "§a通过剑之试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 1 run summon aw:text_display "§71/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 1 if score achievement.singlePlayer.finishMap record matches 0 run clone -85 5 -3 -85 5 -3 -27 3 -45
            execute if score temp.achievementPage data matches 1 if score achievement.singlePlayer.finishMap record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 1 if score achievement.singlePlayer.finishMap record matches 1 run clone -85 4 -3 -85 4 -3 -27 3 -45
            execute if score temp.achievementPage data matches 1 if score achievement.singlePlayer.finishMap record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 2 页：[单人] 让田英睡觉去吧！ - 不死亡通过剑之试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 2 run summon aw:text_display "§b[单人] §l让田英睡觉去吧！" -27 3.3 -45
            execute if score temp.achievementPage data matches 2 run summon aw:text_display "§a不死亡通过剑之试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 2 run summon aw:text_display "§72/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 2 if score achievement.singlePlayer.neverDied record matches 0 run clone -86 5 -3 -86 5 -3 -27 3 -45
            execute if score temp.achievementPage data matches 2 if score achievement.singlePlayer.neverDied record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 2 if score achievement.singlePlayer.neverDied record matches 1 run clone -86 4 -3 -86 4 -3 -27 3 -45
            execute if score temp.achievementPage data matches 2 if score achievement.singlePlayer.neverDied record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 3 页：[单人] 挑战自我 - 通过 2 级或更高难度的试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 3 run summon aw:text_display "§b[单人] §l挑战自我" -27 3.3 -45
            execute if score temp.achievementPage data matches 3 run summon aw:text_display "§a通过2级或更高难度的试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 3 run summon aw:text_display "§73/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 3 if score achievement.singlePlayer.difficulty2 record matches 0 run clone -87 5 -3 -87 5 -3 -27 3 -45
            execute if score temp.achievementPage data matches 3 if score achievement.singlePlayer.difficulty2 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 3 if score achievement.singlePlayer.difficulty2 record matches 1 run clone -87 4 -3 -87 4 -3 -27 3 -45
            execute if score temp.achievementPage data matches 3 if score achievement.singlePlayer.difficulty2 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 4 页：[单人] 举步维艰 - 通过 3 级或更高难度的试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 4 run summon aw:text_display "§d[单人][困难] §l举步维艰" -27 3.3 -45
            execute if score temp.achievementPage data matches 4 run summon aw:text_display "§a通过3级或更高难度的试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 4 run summon aw:text_display "§74/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 4 if score achievement.singlePlayer.difficulty3 record matches 0 run clone -88 5 -3 -88 5 -3 -27 3 -45
            execute if score temp.achievementPage data matches 4 if score achievement.singlePlayer.difficulty3 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 4 if score achievement.singlePlayer.difficulty3 record matches 1 run clone -88 4 -3 -88 4 -3 -27 3 -45
            execute if score temp.achievementPage data matches 4 if score achievement.singlePlayer.difficulty3 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 5 页：[单人] 这不可能！ - 通过 4 级或更高难度的试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 5 run summon aw:text_display "§e[单人][传奇] §l这不可能！" -27 3.3 -45
            execute if score temp.achievementPage data matches 5 run summon aw:text_display "§a通过4级或更高难度的试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 5 run summon aw:text_display "§75/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 5 if score achievement.singlePlayer.difficulty4 record matches 0 run clone -89 5 -3 -89 5 -3 -27 3 -45
            execute if score temp.achievementPage data matches 5 if score achievement.singlePlayer.difficulty4 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 5 if score achievement.singlePlayer.difficulty4 record matches 1 run clone -89 4 -3 -89 4 -3 -27 3 -45
            execute if score temp.achievementPage data matches 5 if score achievement.singlePlayer.difficulty4 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 6 页：[单人] 别挡道，我很急！ - 在 45 分钟内通过试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 6 run summon aw:text_display "§b[单人] §l别挡道，我很急！" -27 3.3 -45
            execute if score temp.achievementPage data matches 6 run summon aw:text_display "§a在45分钟内通过试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 6 run summon aw:text_display "§76/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 6 if score achievement.singlePlayer.speedrun record matches 0 run clone -90 5 -3 -90 5 -3 -27 3 -45
            execute if score temp.achievementPage data matches 6 if score achievement.singlePlayer.speedrun record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 6 if score achievement.singlePlayer.speedrun record matches 1 run clone -90 4 -3 -90 4 -3 -27 3 -45
            execute if score temp.achievementPage data matches 6 if score achievement.singlePlayer.speedrun record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 7 页：[单人] 纯天然 - 全程除了治疗药水之外，不使用其他药水通过试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 7 run summon aw:text_display "§d[单人][困难] §l纯天然" -27 3.3 -45
            execute if score temp.achievementPage data matches 7 run summon aw:text_display "§a全程除了治疗药水之外，不使用其他药水通过试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 7 run summon aw:text_display "§77/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 7 if score achievement.singlePlayer.noPotion record matches 0 run clone -91 5 -3 -91 5 -3 -27 3 -45
            execute if score temp.achievementPage data matches 7 if score achievement.singlePlayer.noPotion record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 7 if score achievement.singlePlayer.noPotion record matches 1 run clone -91 4 -3 -91 4 -3 -27 3 -45
            execute if score temp.achievementPage data matches 7 if score achievement.singlePlayer.noPotion record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 8 页：[多人] 齐心协力 - 通过剑之试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 8 run summon aw:text_display "§b[多人] §l齐心协力" -27 3.3 -45
            execute if score temp.achievementPage data matches 8 run summon aw:text_display "§a通过剑之试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 8 run summon aw:text_display "§78/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 8 if score achievement.multiPlayer.finishMap record matches 0 run clone -85 2 -3 -85 2 -3 -27 3 -45
            execute if score temp.achievementPage data matches 8 if score achievement.multiPlayer.finishMap record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 8 if score achievement.multiPlayer.finishMap record matches 1 run clone -85 1 -3 -85 1 -3 -27 3 -45
            execute if score temp.achievementPage data matches 8 if score achievement.multiPlayer.finishMap record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 9 页：[多人] 人多力量大 - 不团灭通过剑之试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 9 run summon aw:text_display "§b[多人] §l人多力量大" -27 3.3 -45
            execute if score temp.achievementPage data matches 9 run summon aw:text_display "§a不团灭通过剑之试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 9 run summon aw:text_display "§79/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 9 if score achievement.multiPlayer.neverDied record matches 0 run clone -86 2 -3 -86 2 -3 -27 3 -45
            execute if score temp.achievementPage data matches 9 if score achievement.multiPlayer.neverDied record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 9 if score achievement.multiPlayer.neverDied record matches 1 run clone -86 1 -3 -86 1 -3 -27 3 -45
            execute if score temp.achievementPage data matches 9 if score achievement.multiPlayer.neverDied record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 10 页：[多人] 躺赢 - 有玩家的击杀数小于 50
        ### 基本描述
            execute if score temp.achievementPage data matches 10 run summon aw:text_display "§b[多人] §l躺赢" -27 3.3 -45
            execute if score temp.achievementPage data matches 10 run summon aw:text_display "§a有玩家的击杀数小于50" -27 2.1 -45
            execute if score temp.achievementPage data matches 10 run summon aw:text_display "§710/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 10 if score achievement.multiPlayer.killLessThan50 record matches 0 run clone -87 2 -3 -87 2 -3 -27 3 -45
            execute if score temp.achievementPage data matches 10 if score achievement.multiPlayer.killLessThan50 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 10 if score achievement.multiPlayer.killLessThan50 record matches 1 run clone -87 1 -3 -87 1 -3 -27 3 -45
            execute if score temp.achievementPage data matches 10 if score achievement.multiPlayer.killLessThan50 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 11 页：[多人] 全靠我带飞 - 有玩家的击杀数大于 200
        ### 基本描述
            execute if score temp.achievementPage data matches 11 run summon aw:text_display "§b[多人] §l全靠我带飞" -27 3.3 -45
            execute if score temp.achievementPage data matches 11 run summon aw:text_display "§a有玩家的击杀数大于200" -27 2.1 -45
            execute if score temp.achievementPage data matches 11 run summon aw:text_display "§711/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 11 if score achievement.multiPlayer.killMoreThan200 record matches 0 run clone -88 2 -3 -88 2 -3 -27 3 -45
            execute if score temp.achievementPage data matches 11 if score achievement.multiPlayer.killMoreThan200 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 11 if score achievement.multiPlayer.killMoreThan200 record matches 1 run clone -88 1 -3 -88 1 -3 -27 3 -45
            execute if score temp.achievementPage data matches 11 if score achievement.multiPlayer.killMoreThan200 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 12 页：[多人] 挑战极限 - 通过 4 级或更高难度的试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 12 run summon aw:text_display "§d[多人][困难] §l挑战极限" -27 3.3 -45
            execute if score temp.achievementPage data matches 12 run summon aw:text_display "§a通过4级或更高难度的试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 12 run summon aw:text_display "§712/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 12 if score achievement.multiPlayer.difficulty4 record matches 0 run clone -89 2 -3 -89 2 -3 -27 3 -45
            execute if score temp.achievementPage data matches 12 if score achievement.multiPlayer.difficulty4 record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 12 if score achievement.multiPlayer.difficulty4 record matches 1 run clone -89 1 -3 -89 1 -3 -27 3 -45
            execute if score temp.achievementPage data matches 12 if score achievement.multiPlayer.difficulty4 record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
    ## 第 13 页：[多人] 势如破竹 - 在 45 分钟内通过试炼
        ### 基本描述
            execute if score temp.achievementPage data matches 13 run summon aw:text_display "§b[多人] §l势如破竹" -27 3.3 -45
            execute if score temp.achievementPage data matches 13 run summon aw:text_display "§a在45分钟内通过试炼" -27 2.1 -45
            execute if score temp.achievementPage data matches 13 run summon aw:text_display "§713/13" -27 1.8 -45
        ### 成就未完成时显示的内容
            execute if score temp.achievementPage data matches 13 if score achievement.multiPlayer.speedrun record matches 0 run clone -90 2 -3 -90 2 -3 -27 3 -45
            execute if score temp.achievementPage data matches 13 if score achievement.multiPlayer.speedrun record matches 0 run summon aw:text_display "§c§l✘ §r§c未完成" -27 2.4 -45
        ### 成就已完成时显示的内容
            execute if score temp.achievementPage data matches 13 if score achievement.multiPlayer.speedrun record matches 1 run clone -90 1 -3 -90 1 -3 -27 3 -45
            execute if score temp.achievementPage data matches 13 if score achievement.multiPlayer.speedrun record matches 1 run summon aw:text_display "§a§l✔ §r§a已完成" -27 2.4 -45
