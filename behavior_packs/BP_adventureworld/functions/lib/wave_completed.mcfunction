# ===== 波潮完成 =====
# 调用此函数以用于标记上一波处于已完成状态，并重置怪物刷新计时

scoreboard players add @e[name=wave] data 1

# --- 补充箭 ---
execute @a ~~~ function lib/supplier/arrow

# --- 释放玩家 ---

# 波次复活启用时
execute @e[name=respawnInNewWave,scores={settings=1}] ~~~ execute @a[scores={isAlive=0}] ~~~ tp @s @p[scores={isAlive=1}]
execute @e[name=respawnInNewWave,scores={settings=1}] ~~~ give @a[scores={isAlive=0}] aw:potion_health 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
execute @e[name=respawnInNewWave,scores={settings=1}] ~~~ effect @a[scores={isAlive=0}] clear
execute @e[name=respawnInNewWave,scores={settings=1}] ~~~ tellraw @a[scores={isAlive=0}] {"rawtext":[{"translate":"§7您已被释放并给予一瓶治疗药水，注意安全！"}]}
execute @e[name=respawnInNewWave,scores={settings=1}] ~~~ scoreboard players set @a isAlive 1
