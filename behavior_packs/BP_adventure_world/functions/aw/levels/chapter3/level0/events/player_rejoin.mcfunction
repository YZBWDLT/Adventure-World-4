# ===== 玩家退出重进 =====
# 3-0 | 湖泊神殿

# --- 通用 ---

## 传送玩家到重生点 | 仅限多人时运行
execute if score playerAmount data matches 2.. run tp @s -173 -20 30 180 0

# --- 完成剧情前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -143 -20 61
## 设置玩家的相机视角
    # [1] 3-2 视角
    execute if score levelCompleted data matches 0 if score timeline time matches 1..299 run camera @s set minecraft:free pos -176 -14 5 facing -188 -21 19
    execute if score levelCompleted data matches 0 if score timeline time matches 2..299 run camera @s set minecraft:free ease 15 in_out_sine pos -187 -18.5 18 facing -173 -20 2
    # [300] 3-3 视角
    execute if score levelCompleted data matches 0 if score timeline time matches 300..599 run camera @s set minecraft:free pos -163 -18 29 facing -163 -32 29
    execute if score levelCompleted data matches 0 if score timeline time matches 301..599 run camera @s set minecraft:free ease 15 in_out_sine pos -163 -31.9 29 facing -163 -33 29
    # [600] 3-1 视角
    execute if score levelCompleted data matches 0 if score timeline time matches 600.. run camera @s set minecraft:free pos -192.9 -17.5 24 rot 0 90
    execute if score levelCompleted data matches 0 if score timeline time matches 601.. run camera @s set minecraft:free ease 15 in_sine pos -186 -19.5 29 rot 0 -89
## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -173 -20 30
