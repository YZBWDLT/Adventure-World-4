# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§a⚅§b⚂"

# --- 生成怪物生成器 ---

## 唤魔者
summon aw:spawner -225 -48 44 0 0 aw:spawn_evoker
