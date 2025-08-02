# ===== 玩家退出重进 =====
# 0-2 | 与田英初次对话

# --- 通用 ---

# --- 完成剧情前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -27 6 -48
## 传送玩家到剧情点
execute if score levelCompleted data matches 0 run tp @s -26 1 -37 facing @e[name="田英",c=1]
## 设置玩家的相机视角
execute if score levelCompleted data matches 0 run camera @s set minecraft:free pos -30 6 -35 facing -25 0 -36
## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -26 1 -37
## 传送玩家到重生点 | 仅限多人时运行
execute if score levelCompleted data matches 1 if score playerAmount data matches 2.. run tp @s -26 1 -37
