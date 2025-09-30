# ===== 玩家退出重进 =====
# 10-4 | 开始单关卡试炼

# 传送玩家到对应位置
## 1-X
execute if score level settings matches 1..3 run function aw/levels/end/stage4/events/player_join/chapter1
## 2-X
execute if score level settings matches 4..6 run function aw/levels/end/stage4/events/player_join/chapter2
## 3-X
execute if score level settings matches 7..10 run function aw/levels/end/stage4/events/player_join/chapter3
## 4-X
execute if score level settings matches 11..14 run function aw/levels/end/stage4/events/player_join/chapter4
## 6-X
execute if score level settings matches 15..18 run function aw/levels/end/stage4/events/player_join/chapter6
## 7-X
execute if score level settings matches 19..23 run function aw/levels/end/stage4/events/player_join/chapter7
# 设置为隐身 | 仅限多人时运行
execute if score playerAmount data matches 2.. run effect @s invisibility 3600 0 true
# 设置玩家的权限
inputpermission set @s camera disabled
inputpermission set @s movement disabled
# 设置玩家的 HUD，120刻后重新显示物品栏
hud @s hide all
execute if score timeline time matches 120.. run hud @s reset hotbar
execute if score timeline time matches 120.. run hud @s reset progress_bar
execute if score timeline time matches 120.. run hud @s reset touch_controls
