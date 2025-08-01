# ===== 玩家退出重进 =====
# 0-4 | 与张宇对话&到达剑之试炼入口

# --- 通用 ---

# --- 完成剧情前 ---

## 设置玩家的重生点
    execute if score levelCompleted data matches 0 run spawnpoint @s 36 1 -22
## 传送玩家到剧情点
    execute if score levelCompleted data matches 0 if score timeline time matches 1..1299 run tp @s -21 3 39 facing @e[name="张宇",c=1]
    execute if score levelCompleted data matches 0 if score timeline time matches 1300..1879 run tp @s -12 1 88 facing -17 1 95
    execute if score levelCompleted data matches 0 if score timeline time matches 1880.. run tp @s -13 1 112 facing @e[name="米云溪",c=1]
## 设置玩家的相机视角
    ### [1] 面向张宇林乐两人
        execute if score levelCompleted data matches 0 if score timeline time matches 1..259 run camera @s set minecraft:free pos -14 8 38 facing -21 2 40
    ### [260] 面向碎片
        execute if score levelCompleted data matches 0 if score timeline time matches 260..840 run camera @s set minecraft:free pos -19 5 39 facing -21 4 41
        execute if score levelCompleted data matches 0 if score timeline time matches 260..840 run camera @s set minecraft:free ease 30 linear pos -20.0 5.0 41.0 facing -21 4.5 41
    ### [1000~1060] 逐渐黑屏
        execute if score levelCompleted data matches 0 if score timeline time matches 1000..1060 run camera @s fade time 3 10 3 color 0 0 0
    ### [1060~1300] 持续黑屏状态
        execute if score levelCompleted data matches 0 if score timeline time matches 1100..1300 run camera @s fade time 0 10 3 color 0 0 0
    ### [1680] 将玩家的视角从神殿转向米云溪
        execute if score levelCompleted data matches 0 if score timeline time matches 1680..1859 run tp @s ~~~ facing @e[name="米云溪",c=1]
    ### [1860] 逐渐黑屏
        execute if score levelCompleted data matches 0 if score timeline time matches 1860..1880 run camera @s fade time 1 1 1 color 0 0 0
    ### [1880] 面向墙壁刻文
        execute if score levelCompleted data matches 0 if score timeline time matches 1880..2279 run camera @s set minecraft:free pos -18 4 106 facing -16 3 103
    ### [2760] 将玩家的视角从神殿转向田英
        execute if score levelCompleted data matches 0 if score timeline time matches 2760.. as @s at @s run tp @s ~~~ facing @e[name="田英",c=1]
## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
    execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
    execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
    execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

## 设置玩家的重生点
    execute if score levelCompleted data matches 1 run spawnpoint @s -16 1 82
## 传送玩家到重生点 | 仅限多人时运行
    execute if score levelCompleted data matches 1 if score playerAmount data matches 2.. run tp @s -16 1 82
