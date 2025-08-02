# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -143 -20 61 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§a⚅§a⚅§b⚂"

# --- 生成怪物生成器 ---

## 骷髅王
summon aw:spawner -154 -21 61 0 0 aw:spawn_skeleton_king

# --- BOSS 专属标题 ---
titleraw @a title {"rawtext":[{"translate":"§c§lBOSS 来 袭"}]}
titleraw @a subtitle {"rawtext":[{"translate":"第 §c3 §f波"}]}
