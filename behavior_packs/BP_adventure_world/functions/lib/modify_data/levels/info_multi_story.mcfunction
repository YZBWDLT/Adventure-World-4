# ===== 信息板显示 =====
# 用于在多人模式、剧情模式下显示信息板。相比于多人纯战斗模式，不再显示游玩时长的秒数，并且标题也改为剧情模式。
# 调用此方法时：需修饰执行者为玩家（execute as @a）；需提前获取信息板类型（function lib/get_data/infoboard_type）。

# --- 空闲状态 ---
# data.temp.infoboardType = 0

# §l§e冒险小世界§b：剑之试炼
# 
# §r§b剧情模式
# §f难度 | §a%%s                    // {"score":{"objective":"settings","name":"difficulty"}}
# 
# §r关卡 §a%%s-%%s §f| %%s          // {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:name_type=\"chapter\"}]"}
# 
# §r§6☺ §f玩家数： §a%%s             // {"score":{"objective":"data","name":"playerAmount"}}
# §r§f☀ §f击杀数： §a%%s            // {"score":{"objective":"killCount","name":"@s"}}
# §r§c☁ §f死亡数： §a%%s            // {"score":{"objective":"deathCount","name":"@s"}}
# 
# §r§f游玩时长： §a%%s分钟            // {"score":{"objective":"time","name":"playedMinute"}}

execute if score temp.infoboardType data matches 0 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a%%s-%%s §f| %%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:name_type=\"chapter\"}]"}, {"score":{"objective":"data","name":"playerAmount"}}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}} ]}}]}

# --- 战斗状态 ---
# data.temp.infoboardType = 1（标准）、2（4-4）、3（6-4）、4（7-5）

# §l§e冒险小世界§b：剑之试炼
# 
# §r§b剧情模式
# §f难度 | §a%%s                     // {"score":{"objective":"settings","name":"difficulty"}}
# 
# §r关卡 §a%%s-%%s §f| %%s           // {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:name_type=\"chapter\"}]"}
# 
# §r§a☠ §f怪物数： §a%%s§7/%%s       // {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"maxMonsterAmount"}}
# §r§6☺ §f玩家数： §a%%s§7/%%s        // {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}
# §r§c☘ §f波数 %%s                   // {"selector":"@e[has_property={aw:name_type=\"wave\"}]"}
# 
# §r§f☀ §f击杀数： §a%%s             // {"score":{"objective":"killCount","name":"@s"}}
# §r§c☁ §f死亡数： §a%%s             // {"score":{"objective":"deathCount","name":"@s"}}
# 
# §r§f游玩时长： §a%%s分钟             // {"score":{"objective":"time","name":"playedMinute"}}

## 标准情况
execute if score temp.infoboardType data matches 1 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a%%s-%%s §f| %%s\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:name_type=\"chapter\"}]"}, {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"maxMonsterAmount"}}, {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}, {"selector":"@e[has_property={aw:name_type=\"wave\"}]"}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}} ]}}]}
## 4-4 | 不显示最大怪物数、波数，显示剩余时间
execute if score temp.infoboardType data matches 2 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a%%s-%%s §f| %%s\n\n§r§a☠ §f怪物数： §a%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§f☹ §f关卡结束：  §a%%s秒\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:name_type=\"chapter\"}]"}, {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}, {"score":{"objective":"time","name":"timeline"}}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}} ]}}]}
## 6-4 | 不显示最大怪物数和波数
execute if score temp.infoboardType data matches 3 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a%%s-%%s §f| %%s\n\n§r§a☠ §f怪物数： §a%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:name_type=\"chapter\"}]"}, {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}} ]}}]}
## 7-5 | 不显示最大怪物数，关卡显示为特别样式
execute if score temp.infoboardType data matches 4 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§c§l最 终 关\n\n§r§a☠ §f怪物数： §a%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}, {"selector":"@e[has_property={aw:name_type=\"wave\"}]"}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}} ]}}]}

# --- 移除临时变量 ---
scoreboard players reset temp.infoboardType data
