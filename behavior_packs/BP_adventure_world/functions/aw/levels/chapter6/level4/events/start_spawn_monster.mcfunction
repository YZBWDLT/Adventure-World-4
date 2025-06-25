# ===== 尝试生成怪物 =====
# 当怪物生成时间为 0 时尝试生成

# --- 随机指定刷新位置和怪物类型 ---

## 随机数值
    scoreboard players random temp.nextMonsterPos data 1 5
    scoreboard players random temp.nextMonsterType data 1 100

## 确定生成器位置
    execute if score temp.nextMonsterPos data matches 1 run summon aw:spawner -75 -37 35
    execute if score temp.nextMonsterPos data matches 2 run summon aw:spawner -66 -39 26
    execute if score temp.nextMonsterPos data matches 3 run summon aw:spawner -84 -39 44
    execute if score temp.nextMonsterPos data matches 4 run summon aw:spawner -66 -37 44
    execute if score temp.nextMonsterPos data matches 5 run summon aw:spawner -84 -37 26

## 确定生成器类型
    execute if score temp.nextMonsterType data matches 1..10 run event entity @e[type=aw:spawner] aw:spawn_spider_3
    execute if score temp.nextMonsterType data matches 11..20 run event entity @e[type=aw:spawner] aw:spawn_cave_spider_3
    execute if score temp.nextMonsterType data matches 21..30 run event entity @e[type=aw:spawner] aw:spawn_witch
    execute if score temp.nextMonsterType data matches 31..50 run event entity @e[type=aw:spawner] aw:spawn_creeper_hard
    execute if score temp.nextMonsterType data matches 51..75 run event entity @e[type=aw:spawner] aw:spawn_zombie_4
    execute if score temp.nextMonsterType data matches 76..100 run event entity @e[type=aw:spawner] aw:spawn_skeleton_3

# --- 重置倒计时 ---
# 当 Boss 血量剩余 1/3 以上时每 3-7 秒尝试生成，剩余 1/3 以下时每 3-5 秒尝试生成
execute if score @e[type=aw:blaze_king] health >= temp.bossHealthOneThird run scoreboard players random temp.nextMonster time 3 10
execute if score @e[type=aw:blaze_king] health < temp.bossHealthOneThird run scoreboard players random temp.nextMonster time 3 5
