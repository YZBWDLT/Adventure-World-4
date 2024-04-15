# ===== 发布地图 =====

## --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] settings
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}

## --- 开启开发者模式时 ---
execute @s[scores={temp=1}] ~~~ kill @e[type=aw:npc]
execute @s[scores={temp=1}] ~~~ function developer/remove_old_scoreboard
execute @s[scores={temp=1}] ~~~ function lib/init/reset_stats
execute @s[scores={temp=1}] ~~~ function levels/open/before_opening/start
