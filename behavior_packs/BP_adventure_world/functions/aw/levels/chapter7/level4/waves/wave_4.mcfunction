# ===== 第 4 波 =====

# --- 波潮完成通用函数 ---
execute positioned -225 -17 99 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§a⚅§a⚄§a⚅§b⚂§e⚀"

# --- 生成怪物生成器 ---

## 苦力怕
summon aw:spawner -228 -7 92 0 0 aw:spawn_creeper_speed
summon aw:spawner -228 -14 98 0 0 aw:spawn_creeper_hard
## 骷髅
summon aw:spawner -234 -8 92 0 0 aw:spawn_skeleton_4
## 女巫
summon aw:spawner -240 -9 92 0 0 aw:spawn_witch
## 三叉戟溺尸
summon aw:spawner -240 -10 98 0 0 aw:spawn_drowned_trident
## 疣猪兽
summon aw:spawner -240 -11 104 0 0 aw:spawn_hoglin_4
## 小僵尸
summon aw:spawner -234 -12 104 0 0 aw:spawn_zombie_baby_4
## 蠹虫
summon aw:spawner -228 -13 104 0 0 aw:spawn_silverfish_4
## 远古守卫者
summon aw:spawner -234 -15 98 0 0 aw:spawn_elder_guardian
