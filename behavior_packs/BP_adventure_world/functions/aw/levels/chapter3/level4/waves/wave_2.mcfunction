# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -170 -14 23 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§a⚅§b⚃§e⚀§e⚁"

# --- 生成怪物生成器 ---

## 守卫者
summon aw:spawner -175 -14 23 0 0 aw:spawn_guardian
summon aw:spawner -176 -8 23 0 0 aw:spawn_guardian
## 溺尸
summon aw:spawner -170 -3 25 0 0 aw:spawn_drowned_3
## 骷髅
summon aw:spawner -173 4 23 0 0 aw:spawn_skeleton_1

# --- 水位上涨 ---
structure load aw:3_4_layer1_water -178 -16 18 0_degrees none layer_by_layer 5.00
titleraw @a subtitle {"rawtext":[{"translate":"第 §c2 §f波 | §c注意！水位上涨！"}]}
