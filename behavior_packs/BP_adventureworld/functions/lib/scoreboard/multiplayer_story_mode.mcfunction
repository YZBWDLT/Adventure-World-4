# ===== 多人模式、剧情模式的快捷栏标题显示 =====

execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={temp2=1}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a1-%%s §f| §e沙漠神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },{ "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={temp2=2}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a2-%%s §f| §a丛林神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },{ "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={temp2=3}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a3-%%s §f| §b湖泊神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },{ "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=0,data=!440}] ~~~ execute @a[scores={temp2=4}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a4-%%s §f| §3寒冰神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },{ "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=0,data=440}] ~~~ execute @a[scores={temp2=4}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a4-%%s §f| §3寒冰神殿\n\n§r§a☠ §f怪物数： §a%%s§7\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§f☹ §f关卡结束：  §a%%s秒\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "time", "name": "@e[name=timeLeft]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={temp2=5}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a5-%%s §f| §f红石神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },{ "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } },  { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=0,data=!640}] ~~~ execute @a[scores={temp2=6}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a6-%%s §f| §7山峦神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },{ "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } },  { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=0,data=640}] ~~~ execute @a[scores={temp2=6}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a6-%%s §f| §7山峦神殿\n\n§r§a☠ §f怪物数： §a%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=0}] ~~~ execute @a[scores={temp2=7}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a7-%%s §f| §c封印神殿\n\n§r§a☠ §f怪物数： §a%%s§7/%%s\n§r§6☺ §f玩家数： §a%%s§7/%%s\n§r§c☘ §f波数 %%s\n\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "data", "name": "@e[name=monsterAmount]" } }, { "score": { "objective": "data", "name": "maxMonsterAmount" } },{ "score": { "objective": "data", "name": "@e[name=alivePlayersAmount]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } },  { "selector": "@e[family=wave_name]" }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }

execute @e[name=level,scores={temp3=1,data=100..}] ~~~ execute @a[scores={temp2=1}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a1-%%s §f| §e沙漠神殿\n§r关卡进度 §a%%s-%%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "temp", "name": "@e[name=level]" } }, { "score": { "objective": "temp2", "name": "@e[name=level]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=1,data=100..}] ~~~ execute @a[scores={temp2=2}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a2-%%s §f| §a丛林神殿\n§r关卡进度 §a%%s-%%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "temp", "name": "@e[name=level]" } }, { "score": { "objective": "temp2", "name": "@e[name=level]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=1,data=100..}] ~~~ execute @a[scores={temp2=3}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a3-%%s §f| §b湖泊神殿\n§r关卡进度 §a%%s-%%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "temp", "name": "@e[name=level]" } }, { "score": { "objective": "temp2", "name": "@e[name=level]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=1,data=100..}] ~~~ execute @a[scores={temp2=4}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a4-%%s §f| §3寒冰神殿\n§r关卡进度 §a%%s-%%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "temp", "name": "@e[name=level]" } }, { "score": { "objective": "temp2", "name": "@e[name=level]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=1,data=100..}] ~~~ execute @a[scores={temp2=5}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a5-%%s §f| §f红石神殿\n§r关卡进度 §a%%s-%%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "temp", "name": "@e[name=level]" } }, { "score": { "objective": "temp2", "name": "@e[name=level]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=1,data=100..}] ~~~ execute @a[scores={temp2=6,position=!68..69}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a6-%%s §f| §7山峦神殿\n§r关卡进度 §a%%s-%%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "temp", "name": "@e[name=level]" } }, { "score": { "objective": "temp2", "name": "@e[name=level]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
execute @e[name=level,scores={temp3=1,data=100..}] ~~~ execute @a[scores={temp2=7}] ~~~ titleraw @s actionbar { "rawtext": [ { "translate": "§l§e冒险小世界§b：剑之试炼\n§r§7Alpha 4.0_09\n\n§r§b剧情模式\n\n§r关卡 §a7-%%s §f| §c封印神殿\n§r关卡进度 §a%%s-%%s\n\n§r§6☺ §f玩家数： §a%%s\n§r§f☀ §f击杀数： §a%%s\n§r§c☣ §f死亡数： §a%%s\n\n§r§f游玩时长： §a%%s分钟", "with": { "rawtext": [ { "score": { "objective": "temp3", "name": "@s" } }, { "score": { "objective": "temp", "name": "@e[name=level]" } }, { "score": { "objective": "temp2", "name": "@e[name=level]" } }, { "score": { "objective": "data", "name": "@e[name=maxPlayersAmount]" } }, { "score": { "objective": "killAmount", "name": "@s" } }, { "score": { "objective": "deathTimes", "name": "@s" } }, { "score": { "objective": "time", "name": "@e[name=playedMinute]" } } ] } } ] }
