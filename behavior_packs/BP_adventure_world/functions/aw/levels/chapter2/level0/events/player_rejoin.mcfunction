# ===== 玩家退出重进 =====
# 2-0 | 丛林神殿

# --- 通用 ---

## 传送玩家到重生点 | 仅限多人时运行
execute if score playerAmount data matches 2.. run tp @s -79 19 26 facing -73 20 55

# --- 完成剧情前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -137 12 33
## 设置玩家的相机视角
    ## [1] 划过2-0
    execute if score timeline time matches 1..309 run camera @s set minecraft:free pos -75 19.5 23 rot 0 0
    execute if score timeline time matches 2..309 run camera @s set minecraft:free ease 15.5 in_out_sine pos -75 19.5 57 rot 0 0
    ## [310] 划过2-2
    execute if score timeline time matches 310.. run camera @s set minecraft:free pos -74 4.5 60 rot 25 60
    execute if score timeline time matches 311.. run camera @s set minecraft:free ease 15.5 in_out_sine pos -93 -15.5 75 rot 0 -150
## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -79 19 26
