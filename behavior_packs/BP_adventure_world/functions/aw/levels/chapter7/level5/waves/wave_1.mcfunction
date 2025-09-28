# ===== 第 1 波 =====

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§b⚃§e⚀"

# --- 生成怪物生成器 ---

## 僵尸（带盾）
summon aw:spawner -232 -49 37 0 0 aw:spawn_zombie_shield
summon aw:spawner -231 -49 49 0 0 aw:spawn_zombie_shield
summon aw:spawner -218 -49 51 0 0 aw:spawn_zombie_shield
summon aw:spawner -218 -49 37 0 0 aw:spawn_zombie_shield

# --- 启用时间流逝 ---
function aw/lib/modify_data/timeline/enable_time_lapse
