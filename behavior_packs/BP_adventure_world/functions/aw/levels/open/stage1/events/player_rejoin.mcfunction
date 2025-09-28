# ===== 玩家退出重进 =====
# 0-1 | 醒来

# --- 通用 ---

## 设置玩家的重生点
spawnpoint @s -27 6 -48

# --- 完成剧情前 ---

## 传送玩家到剧情点
execute if score levelCompleted data matches 0 run tp @s -26 6 -50 facing -27 6 -51
## 设置玩家的相机视角
execute if score levelCompleted data matches 0 run camera @s fade time 0 1 5 color 0 0 0
## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all

# --- 完成剧情后 ---

## 传送玩家到重生点 | 仅限多人时运行
execute if score levelCompleted data matches 1 if score playerAmount data matches 2.. run tp @s -27 6 -48
