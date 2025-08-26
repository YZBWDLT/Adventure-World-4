# ===== 玩家退出重进 =====
# 6-0 | 山峦神殿

# --- 通用 ---

## 传送玩家到重生点 | 仅限多人时运行
execute if score playerAmount data matches 2.. run tp @s -81 -30 -28

# --- 完成剧情前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -95 -30 -6
## 设置玩家的相机视角
    ## [1] 6-2 视角
    execute if score levelCompleted data matches 0 if score timeline time matches 1..459 run camera @s set minecraft:free pos -72 -12 -46 facing -82 -21 -35
    ## [460~959] 面向玩家视角（该视角为循环命令，无需重复指定）
## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -81 -30 -28
