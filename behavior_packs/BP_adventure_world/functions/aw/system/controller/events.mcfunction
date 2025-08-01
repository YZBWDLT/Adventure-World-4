# ===== 事件控制器 =====
# 主要为一些杂项功能的实现。

# --- 全局饱和 ---
execute if score tick time matches 4 run effect @a saturation 1 10 true

# --- 清除怪物和生成器 ---
execute if score tick time matches 5 if score levelCompleted data matches !0 run kill @e[type=aw:spawner]
execute if score tick time matches 5 if score levelCompleted data matches !0 run kill @e[family=monster]

# --- 地图重置 ---
# 当检测到有玩家在重置区后，重置地图
# execute if entity @a[x=-90,y=0,z=-16,dx=4,dy=4,dz=4,c=1] run function aw/levels/open/start_from_end

# --- 关闭随机刻 ---
# 防止场景被破坏
gamerule randomtickspeed 0
