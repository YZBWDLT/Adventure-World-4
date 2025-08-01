# ===== 玩家退出重进 =====
# 7-0 | 剑之神殿 & 封印神殿

# --- 完成剧情前 ---
# 剑之神殿

## 设置玩家的重生点
execute if score levelCompleted data matches 0 run spawnpoint @s -87 -39 96
## 传送玩家到重生点
execute if score levelCompleted data matches 0 run tp @s -87 -39 96
## 设置玩家的相机视角
    ## [纯战斗1450, 剧情1950] 黑屏并锁定玩家行动
    execute if score levelCompleted data matches 0 if score storyMode settings matches 0 if score timeline time matches 1450.. run camera @s fade time 2 7 2
    execute if score levelCompleted data matches 0 if score storyMode settings matches 1 if score timeline time matches 1950.. run camera @s fade time 2 7 2

## 设置为隐身 | 仅限多人时运行，[~120]
execute if score levelCompleted data matches 0 if score timeline time matches ..120 if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
## 设置玩家的权限 | [~120]
execute if score levelCompleted data matches 0 if score timeline time matches ..120 run inputpermission set @s camera disabled
execute if score levelCompleted data matches 0 if score timeline time matches ..120 run inputpermission set @s movement disabled
## 设置玩家的 HUD | [~120]
execute if score levelCompleted data matches 0 if score timeline time matches ..120 run hud @s hide all

# --- 完成剧情后 ---

## 设置玩家的重生点
execute if score levelCompleted data matches 1 run spawnpoint @s -119 -16 103	
## 传送玩家到重生点 | 仅限多人时运行
execute if score levelCompleted data matches 1 if score playerAmount data matches 2.. run tp @s -119 -16 103	
