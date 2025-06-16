# ===== 生成怪物 =====
# 当怪物生成时间为 0 时尝试生成

# --- 随机指定刷新位置和怪物类型 ---

## 随机数值
    scoreboard players random temp.nextMonsterPos data 1 5
    scoreboard players random temp.nextMonsterType data 1 8

## 确定生成器位置
    execute if score temp.nextMonsterPos data matches 1 run summon aw:spawner -122 -31 6
    execute if score temp.nextMonsterPos data matches 2 run summon aw:spawner -130 -31 -2
    execute if score temp.nextMonsterPos data matches 3 run summon aw:spawner -130 -31 14
    execute if score temp.nextMonsterPos data matches 4 run summon aw:spawner -130 -31 6
    execute if score temp.nextMonsterPos data matches 5 run summon aw:spawner -138 -31 6

## 确定生成器类型
    execute if score temp.nextMonsterType data matches 1 run event entity @e[type=aw:spawner] aw:spawn_creeper_energy
    execute if score temp.nextMonsterType data matches 2 run event entity @e[type=aw:spawner] aw:spawn_creeper_speed
    execute if score temp.nextMonsterType data matches 3 run event entity @e[type=aw:spawner] aw:spawn_skeleton_3
    execute if score temp.nextMonsterType data matches 4 run event entity @e[type=aw:spawner] aw:spawn_stray_3
    execute if score temp.nextMonsterType data matches 5 run event entity @e[type=aw:spawner] aw:spawn_drowned_3
    execute if score temp.nextMonsterType data matches 6 run event entity @e[type=aw:spawner] aw:spawn_drowned_trident
    execute if score temp.nextMonsterType data matches 7 run event entity @e[type=aw:spawner] aw:spawn_zombie_3
    execute if score temp.nextMonsterType data matches 8 run event entity @e[type=aw:spawner] aw:spawn_zombie_baby_3

# --- 重置倒计时 ---
scoreboard players random temp.nextMonster time 3 10
