# ===== 玩家退出重进 =====
# 4-0 | 寒冰神殿

# --- 通用 ---

## 传送玩家到重生点 | 仅限多人时运行
execute if score levelCompleted data matches 1 if score playerAmount data matches 2.. run tp @s -173 17 -8 facing -167 18 -15

# --- 完成剧情前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -170 -14 23
## 设置玩家的相机视角
    ## [1] 4-1 视角
    execute if score levelCompleted data matches 0 if score timeline time matches 1..379 run camera @s set minecraft:free pos -168 21.0 -16 facing -159 17 -26
    execute if score levelCompleted data matches 0 if score timeline time matches 1..379 run camera @s set minecraft:free ease 60 linear pos -159 17 -26

    ## [380] 4-2 和 4-3 过道视角
    execute if score levelCompleted data matches 0 if score timeline time matches 381..779 run camera @s set minecraft:free pos -156 10.0 20 facing -156 -10 20
    execute if score levelCompleted data matches 0 if score timeline time matches 382..779 run camera @s set minecraft:free ease 19.5 linear pos -156 -9.7 20

    ## [780] 回到玩家视角
    execute if score levelCompleted data matches 0 if score timeline time matches 780.. run camera @s set minecraft:free pos -164 18.3 -12 facing -164 10 -12
    execute if score levelCompleted data matches 0 if score timeline time matches 781.. as @s at @s anchored eyes run camera @s set minecraft:free ease 11 in_out_sine pos ^^^0.3 facing ^^^1

## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -173 18 -8
