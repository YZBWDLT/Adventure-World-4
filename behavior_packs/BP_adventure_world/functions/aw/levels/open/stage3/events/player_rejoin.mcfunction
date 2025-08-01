# ===== 玩家退出重进 =====
# 0-3 | 到达时间神殿

# --- 通用 ---

# --- 完成剧情前 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -26 1 -37
## 传送玩家到剧情点
execute if score levelCompleted data matches 0 run tp @s 36 1 -22 facing @e[name="米云溪",c=1]
## 设置玩家的相机视角
execute if score levelCompleted data matches 0 if score timeline time matches 140..300 run camera @s set minecraft:free pos 50 20 -15 facing 35 5 -33
execute if score levelCompleted data matches 0 if score timeline time matches 620..940 run camera @s set minecraft:free pos 35 7 -33 facing 30 2 -33
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
