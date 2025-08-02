# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -225 -17 99 run function aw/lib/modify_data/levels/complete_wave

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§a⚅§b⚂§e⚁§e⚀§e⚀"

# --- 生成怪物生成器 ---

## 骷髅王
summon aw:spawner -238 -11 103 0 0 aw:spawn_skeleton_king
## 骷髅
summon aw:spawner -226 -16 88  0 0 aw:spawn_skeleton_3
## 岩浆怪
summon aw:spawner -234 -16 89  0 0 aw:spawn_magma_cube_small
summon aw:spawner -240 -10 110 0 0 aw:spawn_magma_cube_middle
## 僵尸猪灵
summon aw:spawner -235 -16 97  0 0 aw:spawn_zombified_piglin_4
## 猪灵
summon aw:spawner -225 -11 113 0 0 aw:spawn_piglin_4
## 骷髅敢死队
summon aw:spawner -242 -16 96  0 0 aw:spawn_skeleton_sword_2

# --- 启用时间线流逝 ---
function aw/lib/modify_data/states/timeline/enable_time_lapse
