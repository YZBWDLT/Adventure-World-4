# ===== 第一章玩家退出重进 =====

# --- 触发各关卡事件 ---
execute if score level data matches 0 run function aw/levels/chapter1/level0/events/player_rejoin
execute if score level data matches 1 run function aw/levels/chapter1/level1/events/player_rejoin
execute if score level data matches 2 run function aw/levels/chapter1/level2/events/player_rejoin
execute if score level data matches 3 run function aw/levels/chapter1/level3/events/player_rejoin

# --- 添加迷雾 ---
fog @s push aw:desert_temple gameFog
