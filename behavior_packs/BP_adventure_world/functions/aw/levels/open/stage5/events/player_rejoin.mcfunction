# ===== 玩家退出重进 =====
# 0-5 | 进入剑之试炼神殿（开幕时间线）

# --- 通用 ---

## 设置玩家的重生点
spawnpoint @s -16 1 82
## 设置玩家的相机视角
execute if score timeline time matches ..110 run camera @s fade time 5 10 3 color 0 0 0
## 设置玩家的权限
inputpermission set @s camera disabled
inputpermission set @s movement disabled
## 设置玩家的 HUD
hud @s hide all

## 标题时间
title @s times 10 30 10
