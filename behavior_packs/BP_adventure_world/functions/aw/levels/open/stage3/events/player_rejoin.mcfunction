# ===== 玩家退出重进 =====
# 0-3 | 到达时间神殿

# --- 通用 ---

# --- 完成剧情前 ---

    ## 设置玩家的重生点
        execute if score levelCompleted data matches 0 run spawnpoint @s -26 1 -37
    ## 传送玩家到剧情点
        execute if score levelCompleted data matches 0 run tp @s 36 1 -22 facing @e[name="米云溪",c=1]
    ## 设置玩家的相机视角
        ### [1] 面向两人
            execute if score levelCompleted data matches 0 if score timeline time matches 1..139 run camera @a set minecraft:free pos 34 5 -18 facing 34 1 -23
        ### [140] 面向时间神殿
            execute if score levelCompleted data matches 0 if score timeline time matches 140..299 run camera @a set minecraft:free pos 50 20 -15 facing 35 5 -33
        ### [300] 面向两人
            execute if score levelCompleted data matches 0 if score timeline time matches 300..619 run camera @a set minecraft:free pos 34 5 -18 facing 34 1 -23
        ### [620] 面向时间神殿的刻文
            execute if score levelCompleted data matches 0 if score timeline time matches 620..939 run camera @a set minecraft:free pos 35 7 -33 facing 30 2 -33
        ### [940] 面向两人
            execute if score levelCompleted data matches 0 if score timeline time matches 940..1079 run camera @a set minecraft:free pos 34 5 -18 facing 34 1 -23
        ### [1080] 面向田英
            execute if score levelCompleted data matches 0 if score timeline time matches 1080..1379 run camera @a set minecraft:free pos 35 5 -29 facing 34 1 -23
    ## 设置为隐身 | 仅限多人时运行
        execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
    ## 设置玩家的权限
        execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
        execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
    ## 设置玩家的 HUD
        execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

    ## 设置玩家的重生点
        execute if score levelCompleted data matches 1 run spawnpoint @s 36 1 -22
    ## 传送玩家到重生点 | 仅限多人时运行
        execute if score levelCompleted data matches 1 if score playerAmount data matches 2.. run tp @s 36 1 -22
