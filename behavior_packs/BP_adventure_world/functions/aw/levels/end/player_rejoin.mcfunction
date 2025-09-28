# ===== 结束剧情玩家退出重进 =====

execute if score level data matches 1 run function aw/levels/end/stage1/events/player_rejoin
execute if score level data matches 2 run function aw/levels/end/stage2/events/player_rejoin
execute if score level data matches 3 run function aw/levels/end/stage3/events/player_rejoin
