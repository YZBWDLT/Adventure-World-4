# ===== 事件控制器 =====
# 主要为一些杂项功能的实现。

# --- 全局饱和 ---
execute if score tick time matches 4 run effect @a saturation 1 10 true

# --- 控制玩家的 HUD ---
function lib/modify_data/hud

# --- 清除怪物和生成器 ---
execute if score tick time matches 5 if score levelCompleted data matches !0 run kill @e[type=aw:spawner]
execute if score tick time matches 5 if score levelCompleted data matches !0 run kill @e[family=monster]

# --- 清除水 ---
# 仅第三章 3-0~3-1 时期内执行，每秒执行一次
execute if score tick time matches 8 run function levels/chapter3/water_clear

# --- 气泡粒子 ---
# 仅检测到有玩家在第三章区域时执行，每 5 秒执行一次
execute if score tick time matches 9 if score chapter data matches 3..6 run function levels/chapter3/particle

# --- 地图重置 ---
# 当检测到有玩家在重置区后，重置地图
execute if entity @a[x=-90,y=0,z=-16,dx=4,dy=4,dz=4,c=1] run function levels/open/start_from_end

# --- 关闭随机刻 ---
# 防止场景被破坏
gamerule randomtickspeed 0
