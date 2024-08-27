# ===== 获取玩家使用的游戏版本 =====

## 因为刚进入游戏时，部分实体未加载，因此使用假名代替
scoreboard players set isNetease data 1
tag @a add cao
execute @a[tag=cao] ~~~ scoreboard players set isNetease data 0
tag @a remove cao