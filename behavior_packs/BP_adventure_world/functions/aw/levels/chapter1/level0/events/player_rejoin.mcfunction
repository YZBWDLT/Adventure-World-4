# ===== 玩家退出重进 =====
# 1-0 | 沙漠神殿

# --- 通用 ---

## 设置玩家的重生点
spawnpoint @s -117 1 -6
## 传送玩家到重生点和剧情点 | 仅限多人时运行
execute if score playerAmount data matches 2.. run tp @s -117 1 -6 0 0

# --- 完成剧情前 ---

## 设置玩家的相机视角
    ## [1] 划过开始房间
    execute if score levelCompleted data matches 0 if score timeline time matches 1..299 run camera @s set minecraft:free pos -121 7 -5 facing @s
    ## [300] 划过1-1
    execute if score levelCompleted data matches 0 if score timeline time matches 300..599 run camera @s set minecraft:free pos -117 3.8 -7 rot 45 0
    ## [600] 望向壁画
    execute if score levelCompleted data matches 0 if score timeline time matches 600.. run camera @s set minecraft:free pos -119 2.5 -4 facing -124 1 -3
## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all
