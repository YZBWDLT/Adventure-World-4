# ===== 玩家退出重进 =====
# 10-3 | 进入试炼门口

# --- 通用 ---

## 设置玩家的重生点
spawnpoint @s -16 1 82
## 传送玩家到重生点 | 仅限多人时运行
execute if score playerAmount data matches 2.. run tp @s -15.0 1 82 facing -11 1 81

# --- 完成剧情前 ---

## 设置为隐身 | 仅限多人时运行
execute if score levelCompleted data matches 0 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限
execute if score levelCompleted data matches 0 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 run inputpermission set @s movement disabled
## 设置玩家的 HUD
execute if score levelCompleted data matches 0 run hud @s hide all
