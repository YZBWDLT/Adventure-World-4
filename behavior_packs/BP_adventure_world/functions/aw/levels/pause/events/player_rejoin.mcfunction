# ===== 玩家退出重进 =====
# 暂停时

execute if score playerAmount data matches 2.. run tp @s -95 -15 -6 180 0
execute if score playerAmount data matches 2.. run function aw/levels/pause/events/show_warning_multi
