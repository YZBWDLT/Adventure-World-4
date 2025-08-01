# ===== 玩家退出重进 =====
# 10-2 | 进行最终结算

# --- 通用 ---

## 设置玩家的重生点
spawnpoint @s -27 7 -48
## 传送玩家到重生点 | 仅限多人时运行
execute if score playerAmount data matches 2.. run tp @s -27 7 -48

# --- 和张宇对话时 ---

## 设置玩家的相机视角
execute if score timeline active matches 3 if score timeline time matches 50.. run camera @s fade time 1 3 1
## 设置为隐身 | 仅限多人时运行
execute if score timeline active matches 3 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score timeline active matches 3 run inputpermission set @s camera disabled
execute if score timeline active matches 3 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score timeline active matches 3 run hud @s hide all
