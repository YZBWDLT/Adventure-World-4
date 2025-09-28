# ===== 关卡设置编号查询 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---

# 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   | 10  |
# 1-1 | 1-2 | 1-3 | 2-1 | 2-2 | 2-3 | 3-1 | 3-2 | 3-3 | 3-4 |
# 11  | 12  | 13  | 14  | 15  | 16  | 17  | 18  | 19  | 20  |
# 4-1 | 4-2 | 4-3 | 4-4 | 6-1 | 6-2 | 6-3 | 6-4 | 7-1 | 7-2 |
# 21  | 22  | 23  |
# 7-3 | 7-4 | 7-5 |

execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "格式：§a<关卡>§7: §b<settings.level>" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§a全流程§7: §b0" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§a1-1§7: §b1 §7| §a1-2§7: §b2 §7| §a1-3§7: §b3" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§a2-1§7: §b4 §7| §a2-2§7: §b5 §7| §a2-3§7: §b6" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§a3-1§7: §b7 §7| §a3-2§7: §b8 §7| §a3-3§7: §b9 §7| §a3-4§7: §b10" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§a4-1§7: §b11 §7| §a4-2§7: §b12 §7| §a4-3§7: §b13 §7| §a4-4§7: §b14" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§a6-1§7: §b15 §7| §a6-2§7: §b16 §7| §a6-3§7: §b17 §7| §a6-4§7: §b18" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§a7-1§7: §b19 §7| §a7-2§7: §b20 §7| §a7-3§7: §b21 §7| §a7-4§7: §b22§7| §a7-5§7: §b23" } ] }
