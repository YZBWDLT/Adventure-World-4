# ===== 重命名岩浆怪 =====
# 在存在中型或大型岩浆怪的关卡使用，为无名称的岩浆怪重新命名。
# 调用此方法时：无需修饰

# --- 重命名小型岩浆怪 ---
execute as @e[family=small_magma_cube,name=""] at @s run summon magma_cube ~~~ 0 0 spawn_small "§a小型岩浆怪"
event entity @e[family=small_magma_cube,name=""] aw:remove_immediately

# --- 重命名中型岩浆怪 ---
execute as @e[family=medium_magma_cube,name=""] at @s run summon magma_cube ~~~ 0 0 spawn_medium "§b中型岩浆怪"
event entity @e[family=medium_magma_cube,name=""] aw:remove_immediately
