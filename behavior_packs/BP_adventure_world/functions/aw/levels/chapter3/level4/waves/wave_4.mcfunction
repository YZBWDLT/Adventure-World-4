# ===== 第 4 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§a⚅§a⚅§a⚄§b⚃"

# --- 生成怪物生成器 ---

## 溺尸
summon aw:spawner -170 12 19 0 0 aw:spawn_drowned_2
summon aw:spawner -174 16 27 0 0 aw:spawn_drowned_2
summon aw:spawner -173 -3 25 0 0 aw:spawn_drowned_2
summon aw:spawner -173 0 20 0 0 aw:spawn_drowned_3
## 守卫者
summon aw:spawner -171 -10 23 0 0 aw:spawn_guardian
summon aw:spawner -175 -10 23 0 0 aw:spawn_guardian

# --- 水位上涨 ---
structure load aw:3_4_layer3 -178 6 18 0_degrees none layer_by_layer 5.00
titleraw @a subtitle {"rawtext":[{"translate":"第 §a4 §f波 | §c注意！水位上涨！"}]}
