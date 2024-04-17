# ===== 显示成就 =====

# --- 清除已有的text display ---
kill @e[type=aw:text_display,family=achievement]

# --- 显示成就 ---
# 以下所有模块的逻辑：
# 第1条命令：获取该成就是否完成，完成则temp.achievement=1，否则为0。
# 第2条命令：若成就未完成，复制对应的普通展示框到(-27 3 -45)
# 第3条命令：若成就已完成，复制对应的发光展示框到(-27 3 -45)
# 第4条命令：显示成就（§b[单人/多人] §l成就名）
# 第5条命令：若成就未完成，显示未完成
# 第6条命令：若成就已完成，显示已完成
# 第7条命令：显示成就的条件

## [单人] 神剑的恩惠 - 通过剑之试炼
execute @e[name=achievement,scores={data=1}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.singlePlayer.completeMap record
execute @e[name=achievement,scores={data=1}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -85 5 -3 -85 5 -3 -27 3 -45
execute @e[name=achievement,scores={data=1}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -85 4 -3 -85 4 -3 -27 3 -45
execute @e[name=achievement,scores={data=1}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[单人] §l神剑的恩惠"
execute @e[name=achievement,scores={data=1}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=1}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=1}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a通过剑之试炼"

## [单人] 让田英睡觉去吧！ - 不死亡通过剑之试炼
execute @e[name=achievement,scores={data=2}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.singlePlayer.notDied record
execute @e[name=achievement,scores={data=2}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -86 5 -3 -86 5 -3 -27 3 -45
execute @e[name=achievement,scores={data=2}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -86 4 -3 -86 4 -3 -27 3 -45
execute @e[name=achievement,scores={data=2}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[单人] §l让田英睡觉去吧！"
execute @e[name=achievement,scores={data=2}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=2}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=2}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a不死亡通过剑之试炼"

## [单人] 挑战自我 - 通过2级或更高难度的试炼
execute @e[name=achievement,scores={data=3}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.singlePlayer.difficulty2 record
execute @e[name=achievement,scores={data=3}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -87 5 -3 -87 5 -3 -27 3 -45
execute @e[name=achievement,scores={data=3}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -87 4 -3 -87 4 -3 -27 3 -45
execute @e[name=achievement,scores={data=3}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[单人] §l挑战自我"
execute @e[name=achievement,scores={data=3}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=3}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=3}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a通过2级或更高难度的试炼"

## [单人] 举步维艰 - 通过3级或更高难度的试炼
execute @e[name=achievement,scores={data=4}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.singlePlayer.difficulty3 record
execute @e[name=achievement,scores={data=4}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -88 5 -3 -88 5 -3 -27 3 -45
execute @e[name=achievement,scores={data=4}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -88 4 -3 -88 4 -3 -27 3 -45
execute @e[name=achievement,scores={data=4}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§d[单人][困难] §l举步维艰"
execute @e[name=achievement,scores={data=4}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=4}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=4}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a通过3级或更高难度的试炼"

## [单人] 这不可能！ - 通过4级或更高难度的试炼
execute @e[name=achievement,scores={data=5}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.singlePlayer.difficulty4 record
execute @e[name=achievement,scores={data=5}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -89 5 -3 -89 5 -3 -27 3 -45
execute @e[name=achievement,scores={data=5}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -89 4 -3 -89 4 -3 -27 3 -45
execute @e[name=achievement,scores={data=5}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§e[单人][传奇] §l这不可能！"
execute @e[name=achievement,scores={data=5}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=5}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=5}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a通过4级或更高难度的试炼"

## [单人] 别挡道，我很急！ - 在45分钟内通过试炼
execute @e[name=achievement,scores={data=6}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.singlePlayer.speedrun record
execute @e[name=achievement,scores={data=6}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -90 5 -3 -90 5 -3 -27 3 -45
execute @e[name=achievement,scores={data=6}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -90 4 -3 -90 4 -3 -27 3 -45
execute @e[name=achievement,scores={data=6}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[单人] §l别挡道，我很急！"
execute @e[name=achievement,scores={data=6}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=6}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=6}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a在45分钟内通过试炼"

## [单人] 纯天然 - 全程除了治疗药水之外，不使用其他药水通过试炼
execute @e[name=achievement,scores={data=7}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.singlePlayer.speedrun record
execute @e[name=achievement,scores={data=7}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -91 5 -3 -91 5 -3 -27 3 -45
execute @e[name=achievement,scores={data=7}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -91 4 -3 -91 4 -3 -27 3 -45
execute @e[name=achievement,scores={data=7}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§d[单人][困难] §l纯天然"
execute @e[name=achievement,scores={data=7}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=7}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=7}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a全程除了治疗药水之外，不使用其他药水通过试炼"

## [多人] 齐心协力 - 通过剑之试炼
execute @e[name=achievement,scores={data=8}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.multiPlayer.completeMap record
execute @e[name=achievement,scores={data=8}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -85 2 -3 -85 2 -3 -27 3 -45
execute @e[name=achievement,scores={data=8}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -85 1 -3 -85 1 -3 -27 3 -45
execute @e[name=achievement,scores={data=8}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[多人] §l齐心协力"
execute @e[name=achievement,scores={data=8}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=8}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=8}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a通过剑之试炼"

## [多人] 人多力量大 - 不团灭通过剑之试炼
execute @e[name=achievement,scores={data=9}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.multiPlayer.notDied record
execute @e[name=achievement,scores={data=9}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -86 2 -3 -86 2 -3 -27 3 -45
execute @e[name=achievement,scores={data=9}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -86 1 -3 -86 1 -3 -27 3 -45
execute @e[name=achievement,scores={data=9}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[多人] §l人多力量大"
execute @e[name=achievement,scores={data=9}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=9}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=9}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a不团灭通过剑之试炼"

## [多人] 躺赢 - 有玩家的击杀数小于50
execute @e[name=achievement,scores={data=10}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.multiPlayer.killLessThan50 record
execute @e[name=achievement,scores={data=10}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -87 2 -3 -87 2 -3 -27 3 -45
execute @e[name=achievement,scores={data=10}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -87 1 -3 -87 1 -3 -27 3 -45
execute @e[name=achievement,scores={data=10}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[多人] §l躺赢"
execute @e[name=achievement,scores={data=10}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=10}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=10}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a有玩家的击杀数小于50"

## [多人] 全靠我带飞 - 有玩家的击杀数大于200
execute @e[name=achievement,scores={data=11}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.multiPlayer.killMoreThan200 record
execute @e[name=achievement,scores={data=11}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -88 2 -3 -88 2 -3 -27 3 -45
execute @e[name=achievement,scores={data=11}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -88 1 -3 -88 1 -3 -27 3 -45
execute @e[name=achievement,scores={data=11}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[多人] §l全靠我带飞"
execute @e[name=achievement,scores={data=11}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=11}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=11}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a有玩家的击杀数大于200"

## [多人] 挑战极限 - 通过4级或更高难度的试炼
execute @e[name=achievement,scores={data=12}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.multiPlayer.difficulty4 record
execute @e[name=achievement,scores={data=12}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -89 2 -3 -89 2 -3 -27 3 -45
execute @e[name=achievement,scores={data=12}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -89 1 -3 -89 1 -3 -27 3 -45
execute @e[name=achievement,scores={data=12}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§d[多人][困难] §l挑战极限"
execute @e[name=achievement,scores={data=12}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=12}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=12}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a通过4级或更高难度的试炼"

## [多人] 势如破竹 - 在45分钟内通过试炼
execute @e[name=achievement,scores={data=13}] ~~~ scoreboard players operation @e[name=achievement] temp = achievement.multiPlayer.speedrun record
execute @e[name=achievement,scores={data=13}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ clone -90 2 -3 -90 2 -3 -27 3 -45
execute @e[name=achievement,scores={data=13}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ clone -90 1 -3 -90 1 -3 -27 3 -45
execute @e[name=achievement,scores={data=13}] ~~~ summon aw:text_display -27 3.3 -45 as_achievement_text_display "§b[多人] §l势如破竹"
execute @e[name=achievement,scores={data=13}] ~~~ execute @e[name=achievement,scores={temp=0}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§c§l✘ §r§c未完成"
execute @e[name=achievement,scores={data=13}] ~~~ execute @e[name=achievement,scores={temp=1}] ~~~ summon aw:text_display -27 2.4 -45 as_achievement_text_display "§a§l✔ §r§a已完成"
execute @e[name=achievement,scores={data=13}] ~~~ summon aw:text_display -27 2.1 -45 as_achievement_text_display "§a在45分钟内通过试炼"

