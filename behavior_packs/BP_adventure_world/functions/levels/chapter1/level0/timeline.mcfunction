# ===== 时间线 =====

# --- 剧情 ---
execute if score storyMode data matches 1

# --- 检查玩家进入下一个关卡 ---
execute as @a[x=-118,y=1,z=15,dx=2,dy=2,dz=2] run function levels/chapter1/level1/start
