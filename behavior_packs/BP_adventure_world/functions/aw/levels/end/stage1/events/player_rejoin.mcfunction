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
        execute if score timeline time matches 1..1009 run camera @s set minecraft:free pos -20 6 91 facing -15.0 1 85
    ## [1100] 还原视角并黑屏
        execute if score timeline time matches 1100..1180 run camera @s fade time 1 3 1
    ## [1200] 切换视角
        execute if score timeline time matches 1200.. run camera @s set minecraft:free pos -30 6 -35 facing -25 0 -36

## 设置为隐身 | 仅限多人时运行
execute if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
inputpermission set @s camera disabled
inputpermission set @s movement disabled
## 设置玩家的 HUD
hud @s hide all
