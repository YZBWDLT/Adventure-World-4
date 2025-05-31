# ===== 复活所有玩家 =====
# 用于复活所有玩家，仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---

execute if score developerMode settings matches 1 run tag @a remove spectator
execute if score developerMode settings matches 1 run gamemode adventure @a[m=spectator]
execute if score developerMode settings matches 1 run tellraw @a {"rawtext":[{"translate":"§b*开发者模式： 已复活所有玩家"}]}
