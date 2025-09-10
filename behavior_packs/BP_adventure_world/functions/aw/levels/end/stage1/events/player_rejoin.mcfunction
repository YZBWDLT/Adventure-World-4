# ===== 玩家退出重进 =====
# 10-1 | 林乐回归

# --- 通用 ---

## 设置玩家的重生点
spawnpoint @s -27 7 -48
## 传送玩家到剧情点
execute if score timeline time matches 1..1149 run tp @s -15.0 1 88 facing @e[type=aw:wild_sword,c=1]
execute if score timeline time matches 1150.. run tp @s -26 1 -37 facing -25 1 -34
## 设置玩家的相机视角
    ## [1] 切换视角
        execute if score timeline time matches 1..749 run camera @s set minecraft:free pos -20 6 91 facing -15.0 1 85
    ## [750~900] 令林乐看见大海，视角低速移动
        execute if score timeline time matches 750..800 run camera @s set minecraft:free pos -5 2 175 rot 0 45
        execute if score timeline time matches 801..930 run camera @s set minecraft:free pos -50 2 220 rot 0 45
    ## [750] 为玩家提供迷雾效果，改为雷暴和夜晚
        execute if score timeline time matches 750..929 run fog @s push aw:raining gameFog
    ## [900] 黑屏以转场回试炼入口场景
        execute if score timeline time matches 931..1399 run camera @s set minecraft:free pos -20 6 91 facing -15.0 1 85
    ## [1400] 切换视角
        execute if score timeline time matches 1400.. run camera @s set minecraft:free pos -30 6 -35 facing -25 0 -36

## 设置为隐身 | 仅限多人时运行
execute if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
inputpermission set @s camera disabled
inputpermission set @s movement disabled
## 设置玩家的 HUD
hud @s hide all
