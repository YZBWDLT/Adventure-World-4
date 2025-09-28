# ===== 第五章玩家退出重进 =====

# --- 触发各关卡事件 ---
execute if score level data matches 0 run function aw/levels/chapter5/level0/events/player_rejoin

# --- 添加迷雾 ---
fog @s push aw:redstone_temple gameFog
