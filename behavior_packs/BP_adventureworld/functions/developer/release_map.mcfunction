# ===== 发布地图 =====

# --- 未开启开发者模式时 ---
scoreboard players operation @s temp = @e[name=developerMode] data
tellraw @s[scores={temp=0}] {"rawtext":[{"translate":"§c该功能仅限在开发者模式下使用"}]}

# --- 开启开发者模式时 ---

## 清除一些独有结构
execute @s[scores={temp=1}] ~~~ function levels/end/stage_3/on_exit
execute @s[scores={temp=1}] ~~~ function levels/end/stage_4/on_exit

execute @s[scores={temp=1}] ~~~ kill @e[type=aw:npc]
execute @s[scores={temp=1}] ~~~ kill @e[type=aw:npc_author]
execute @s[scores={temp=1}] ~~~ function lib/init/data_reset_stats
execute @s[scores={temp=1}] ~~~ function levels/open/before_opening/start
