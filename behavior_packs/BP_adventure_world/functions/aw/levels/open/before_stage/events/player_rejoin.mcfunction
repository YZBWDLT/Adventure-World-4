# ===== 玩家退出重进 =====
# 开幕

# --- 通用 ---

## 设置玩家的重生点
spawnpoint @s 43 21 132
## 传送玩家到重生点
tp @s 43 21 132
## 设置玩家的 HUD
hud @s hide all
hud @s reset touch_controls
## 清除玩家的物品
clear @s

# --- 选择模式后 ---

## 设置玩家相机视角
execute if score timeline active matches 2 run camera @s fade time 2 10 5 color 0 0 0
