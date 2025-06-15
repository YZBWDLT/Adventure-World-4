# ===== 第 1 波 =====

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§b⚃§e⚁§e⚀§e⚁"

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -170 -14 26 0 0 aw:spawn_drowned_2
summon aw:spawner -174 -11 19 0 0 aw:spawn_drowned_2
summon aw:spawner -173 -6 27 0 0 aw:spawn_drowned_2
## 苦力怕
summon aw:spawner -176 -14 20 0 0 aw:spawn_creeper_normal
## 骷髅
summon aw:spawner -170 -3 25 0 0 aw:spawn_skeleton_1

# --- 清除水 ---
function aw/levels/chapter3/level4/events/clear_water
