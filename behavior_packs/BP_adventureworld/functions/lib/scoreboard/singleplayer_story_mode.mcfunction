# ===== 单人模式、剧情模式的快捷栏标题显示 =====

execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @a[scores={temp2=1}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a1-%%s §f| §e沙漠神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @a[scores={temp2=2}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a2-%%s §f| §a丛林神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @a[scores={temp2=3}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a3-%%s §f| §b湖泊神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @e[name=gameId,scores={data=!440}] ~~~ execute @a[scores={temp2=4}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a4-%%s §f| §3寒冰神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @e[name=gameId,scores={data=440}] ~~~ execute @a[scores={temp2=4}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a4-%%s §f| §3寒冰神殿\n\n§r§a☠ §f怪物数： §a%%s§7\n§r§f☹ §f关卡结束：  §a%%s秒\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "temp", "name": "@e[name=timeline]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @a[scores={temp2=5}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a5-%%s §f| §f红石神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },  { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @e[name=gameId,scores={data=!640}] ~~~ execute @a[scores={temp2=6}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a6-%%s §f| §7山峦神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },  { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @e[name=gameId,scores={data=640}] ~~~ execute @a[scores={temp2=6}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a6-%%s §f| §7山峦神殿\n\n§r§a☠ §f怪物数： §a%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @e[name=gameId,scores={data=!750}] ~~~ execute @a[scores={temp2=7}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a7-%%s §f| §c封印神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxMonsterAmount]" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=0}] ~~~ execute @e[name=gameId,scores={data=750}] ~~~ execute @a[scores={temp2=7}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§c§l最 终 关\n\n§r§a☠ §f怪物数： §a%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } },  { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }

execute @e[name=levelCompleted,scores={data=1}] ~~~ execute @a[scores={temp2=1}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a1-%%s §f| §e沙漠神殿\n§r关卡进度 §a%%s-%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=chapter]" } }, { "score": { "objective": "data", "name": "@e[name=level]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=1}] ~~~ execute @a[scores={temp2=2}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a2-%%s §f| §a丛林神殿\n§r关卡进度 §a%%s-%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=chapter]" } }, { "score": { "objective": "data", "name": "@e[name=level]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=1}] ~~~ execute @a[scores={temp2=3}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a3-%%s §f| §b湖泊神殿\n§r关卡进度 §a%%s-%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=chapter]" } }, { "score": { "objective": "data", "name": "@e[name=level]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=1}] ~~~ execute @a[scores={temp2=4}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a4-%%s §f| §3寒冰神殿\n§r关卡进度 §a%%s-%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=chapter]" } }, { "score": { "objective": "data", "name": "@e[name=level]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=1}] ~~~ execute @a[scores={temp2=5}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a5-%%s §f| §f红石神殿\n§r关卡进度 §a%%s-%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=chapter]" } }, { "score": { "objective": "data", "name": "@e[name=level]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=1}] ~~~ execute @a[scores={temp2=6,position=!68..69}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a6-%%s §f| §7山峦神殿\n§r关卡进度 §a%%s-%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=chapter]" } }, { "score": { "objective": "data", "name": "@e[name=level]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=levelCompleted,scores={data=1}] ~~~ execute @a[scores={temp2=7}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n\n§r§b剧情模式\n§f难度 | §a%%s\n\n§r关卡 §a7-%%s §f| §c封印神殿\n§r关卡进度 §a%%s-%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ {"score":{"objective":"data","name":"@e[name=difficulty]"}}, { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=chapter]" } }, { "score": { "objective": "data", "name": "@e[name=level]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
