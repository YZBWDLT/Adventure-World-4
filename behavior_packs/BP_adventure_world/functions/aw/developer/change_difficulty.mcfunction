# ===== 更改难度设置 =====
# 用于更改额外游戏难度，仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---

## 更改游戏难度（在-3~3之间轮换）
execute if score developerMode settings matches 1 run scoreboard players add extraDifficulty settings 1
execute if score developerMode settings matches 1 unless score extraDifficulty settings matches -3..3 run scoreboard players set extraDifficulty settings -3
## 提示玩家
execute if score developerMode settings matches 1 run tellraw @a {"rawtext":[{"translate":"已更改额外难度为 %%s","with":{"rawtext":[{"score":{"objective":"settings","name":"extraDifficulty"}}]}}]}
execute if score developerMode settings matches 1 as @a at @s run playsound random.orb @s
