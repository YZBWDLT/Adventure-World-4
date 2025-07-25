# ===== 获取循环所需变量 =====

## 玩家数量
    function aw/lib/get_data/player_amount
## 怪物数量
    function aw/lib/get_data/monster_amount
## 地图难度
    function aw/lib/get_data/difficulty
## 游玩状态判断
    scoreboard players set gaming data 0
    execute if score chapter data matches 1..7 unless score level data matches 0 if score levelCompleted data matches 0 run scoreboard players set gaming data 1
