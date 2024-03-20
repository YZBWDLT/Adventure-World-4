# ===== 禁用对话 =====

scoreboard players set @e[name=dialogue] time 0
scoreboard players set @e[name=dialogue] active 0

# 取消玩家的隐身状态
effect @a invisibility 0 1 true

# 将相机视角和玩家位置都传送到常加载区域中待命，防止因常加载区域过小导致距离过远时无法锁定视角
tp @e[name=playerPosition] -83 1 -2
tp @e[name=facingPosition] -83 1 -2
