# ===== 信息板显示 =====
# 用于在多人模式、纯战斗模式下显示信息板。相比于单人纯战斗模式，应显示当前存活玩家数和玩家总数。
# 调用此方法时：需修饰执行者为玩家（execute as @a）；需提前获取信息板类型（function aw/lib/get_data/infoboard_type）。

# --- 空闲状态 ---
# data.temp.infoboardType = 0

# §l§e冒险小世界§b：剑之试炼
# §r§84.2
# §r§6纯战斗模式
# §f难度 | §a%%s                    // {"score":{"objective":"settings","name":"difficulty"}}
# 
# §r关卡 §a%%s-%%s §f| %%s          // {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"chapter\"}]"}
# 
# §r§6☺ §f玩家数： §a%%s             // {"score":{"objective":"data","name":"playerAmount"}}
# §r§f☀ §f击杀数： §a%%s            // {"score":{"objective":"killCount","name":"@s"}}
# §r§c☁ §f死亡数： §a%%s            // {"score":{"objective":"deathCount","name":"@s"}}
# 
# §r§f游玩时长： §a%%s:%%s           // {"score":{"objective":"time","name":"playedMinute"}}, {"score":{"objective":"time","name":"playedSecond"}}

execute if score temp.infoboardType data matches 0 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n§r§84.2\n§r§6纯战斗模式\n§f难度 | §a%%s\n\n§r关卡 §a%%s-%%s §f| %%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"chapter\"}]"}, {"score":{"objective":"data","name":"playerAmount"}}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}}, {"score":{"objective":"time","name":"playedSecond"}} ]}}]}

# --- 战斗状态 ---
# data.temp.infoboardType = 1（标准）、2（4-4）、3（6-4）、4（7-5）

# §l§e冒险小世界§b：剑之试炼
# §r§84.2
# §r§6纯战斗模式
# §f难度 | §a%%s                     // {"score":{"objective":"settings","name":"difficulty"}}
# 
# §r关卡 §a%%s-%%s §f| %%s           // {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"chapter\"}]"}
# 
# §r§a☠ §f怪物数： §a%%s       // {"score":{"objective":"data","name":"monsterAmount"}}
# §r§6☺ §f玩家数： §a%%s§7/%%s        // {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}
# §r§c☘ §f波数 %%s                   // {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"wave\"}]"}
# 
# §r§f☀ §f击杀数： §a%%s             // {"score":{"objective":"killCount","name":"@s"}}
# §r§c☁ §f死亡数： §a%%s             // {"score":{"objective":"deathCount","name":"@s"}}
# 
# §r§f游玩时长： §a%%s:%%s           // {"score":{"objective":"time","name":"playedMinute"}}, {"score":{"objective":"time","name":"playedSecond"}}

## 标准情况
execute if score temp.infoboardType data matches 1 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n§r§84.2\n§r§6纯战斗模式\n§f难度 | §a%%s\n\n§r关卡 §a%%s-%%s §f| %%s\n\n§r§a☠ §f怪物数： §a%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"chapter\"}]"}, {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}, {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"wave\"}]"}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}}, {"score":{"objective":"time","name":"playedSecond"}} ]}}]}
## 4-4 | 不显示波数，显示剩余时间
execute if score temp.infoboardType data matches 2 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n§r§84.2\n§r§6纯战斗模式\n§f难度 | §a%%s\n\n§r关卡 §a%%s-%%s §f| %%s\n\n§r§a☠ §f怪物数： §a%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§f☹ §f关卡结束：  §a%%s秒\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"chapter\"}]"}, {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}, {"score":{"objective":"time","name":"temp.remainingTime"}}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}}, {"score":{"objective":"time","name":"playedSecond"}} ]}}]}
## 6-4 | 不显示波数
execute if score temp.infoboardType data matches 3 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n§r§84.2\n§r§6纯战斗模式\n§f难度 | §a%%s\n\n§r关卡 §a%%s-%%s §f| %%s\n\n§r§a☠ §f怪物数： §a%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"chapter"}}, {"score":{"objective":"data","name":"level"}}, {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"chapter\"}]"}, {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}}, {"score":{"objective":"time","name":"playedSecond"}} ]}}]}
## 7-5 | 关卡显示为特别样式
execute if score temp.infoboardType data matches 4 run titleraw @s actionbar {"rawtext":[{"translate":"§l§e冒险小世界§b：剑之试炼\n§r§84.2\n§r§6纯战斗模式\n§f难度 | §a%%s\n\n§c§l最 终 关\n\n§r§a☠ §f怪物数： §a%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☁ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s:%%s","with":{"rawtext":[{"score":{"objective":"settings","name":"difficulty"}}, {"score":{"objective":"data","name":"monsterAmount"}}, {"score":{"objective":"data","name":"alivePlayerAmount"}}, {"score":{"objective":"data","name":"playerAmount"}}, {"selector":"@e[has_property={aw:marker_type=\"name\",aw:name=\"wave\"}]"}, {"score":{"objective":"killCount","name":"@s"}}, {"score":{"objective":"deathCount","name":"@s"}}, {"score":{"objective":"time","name":"playedMinute"}}, {"score":{"objective":"time","name":"playedSecond"}} ]}}]}
