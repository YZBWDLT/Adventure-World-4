# ===== 第 3 波 =====

# --- 波潮完成通用函数 ---
execute positioned -225 -17 99 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§a⚅§a⚄§b⚃§e⚀§e⚀"

# --- 生成怪物生成器 ---

## 流浪者
summon aw:spawner -228 -7 92 0 0 aw:spawn_stray_4
## 苦力怕
summon aw:spawner -234 -7 92 0 0 aw:spawn_creeper_hard
## 蜘蛛
summon aw:spawner -240 -7 92 0 0 aw:spawn_spider_4
## 僵尸
summon aw:spawner -240 -7 98 0 0 aw:spawn_zombie_4
## 小僵尸
summon aw:spawner -234 -7 104 0 0 aw:spawn_zombie_baby_4
## 溺尸
summon aw:spawner -240 -7 104 0 0 aw:spawn_drowned_3
## 尸壳
summon aw:spawner -228 -7 104 0 0 aw:spawn_husk
## 骷髅
summon aw:spawner -228 -7 98 0 0 aw:spawn_skeleton_4
## 洞穴蜘蛛
summon aw:spawner -234 -7 98 0 0 aw:spawn_cave_spider_4
