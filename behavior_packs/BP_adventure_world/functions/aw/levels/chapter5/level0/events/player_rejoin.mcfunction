# ===== 玩家退出重进 =====
# 5-0 | 红石神殿

# --- 通用 ---

## 传送玩家到重生点 | 仅限多人时运行
execute if score playerAmount data matches 2.. run tp @s -95 -31 -6 180 0

# --- 完成剧情前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -141 -30 6
## 设置玩家的相机视角
    ## [1] 5-0 视角
    execute if score levelCompleted data matches 0 if score timeline time matches 1.. run camera @s set minecraft:free pos -89 -23 -19 facing -101 -30 -7
    execute if score levelCompleted data matches 0 if score timeline time matches 2.. run camera @s set minecraft:free ease 45 linear pos -101 -23 -19 facing -89 -30 -7

## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -95 -30 -6
