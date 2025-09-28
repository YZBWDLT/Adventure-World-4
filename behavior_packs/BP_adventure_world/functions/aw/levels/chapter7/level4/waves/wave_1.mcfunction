# ===== 第 1 波 =====

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§b⚃§e⚀§e⚁§e⚀§e⚀"

# --- 生成怪物生成器 ---

## 岩浆怪
summon aw:spawner -242 -12 96 0 0 aw:spawn_magma_cube_large
## 恶魂
summon aw:spawner -238 -7 103 0 0 aw:spawn_ghast
