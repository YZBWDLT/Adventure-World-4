# ===== 结束剧情玩家退出重进 =====

execute if score level data matches 0 run function aw/levels/open/before_stage/events/player_rejoin
execute if score level data matches 1 run function aw/levels/open/stage1/events/player_rejoin
execute if score level data matches 2 run function aw/levels/open/stage2/events/player_rejoin
execute if score level data matches 3 run function aw/levels/open/stage3/events/player_rejoin
execute if score level data matches 4 run function aw/levels/open/stage4/events/player_rejoin
execute if score level data matches 5 run function aw/levels/open/stage5/events/player_rejoin
