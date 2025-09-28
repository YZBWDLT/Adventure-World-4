# ===== 生成怪物 =====

scoreboard players remove temp.nextMonster time 1
execute if score temp.nextMonster time matches ..0 if score monsterAmount data matches ..9 run function aw/levels/chapter6/level4/events/spawn_monster
