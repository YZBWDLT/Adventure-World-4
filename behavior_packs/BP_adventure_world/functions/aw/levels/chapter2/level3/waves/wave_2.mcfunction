# ===== 第 2 波 =====

# --- 波潮完成通用函数 ---
execute positioned -143 -20 61 run function aw/lib/events/levels/complete_wave

# --- 更新波数信息 ---
# 符号具体含义请见函数aw/lib/modify_data/levels/wave_(?)

## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately
## 设置名称
summon aw:marker -83 1 -2 ~~ aw:set_wave_name "§a⚅§b⚃§e⚀"

# --- 生成怪物生成器 ---

## 苦力怕
summon aw:spawner -154 -21 66 0 0 aw:spawn_creeper_normal
summon aw:spawner -154 -21 56 0 0 aw:spawn_creeper_energy
summon aw:spawner -159 -21 61 0 0 aw:spawn_creeper_normal
summon aw:spawner -149 -21 61 0 0 aw:spawn_creeper_energy

## 僵尸
summon aw:spawner -148.0 -21 56.0 0 0 aw:spawn_zombie_2
summon aw:spawner -159.0 -21 67.0 0 0 aw:spawn_zombie_2
summon aw:spawner -148.0 -21 67.0 0 0 aw:spawn_zombie_2
summon aw:spawner -159.0 -21 56.0 0 0 aw:spawn_zombie_2

## 小僵尸
summon aw:spawner -154 -21 61 0 0 aw:spawn_zombie_baby_1

# --- 提示玩家弓可以秒杀骷髅 ---
tellraw @a {"rawtext":[{"translate":"§a当心高能苦力怕！它们将造成更强力的爆炸伤害，但只当你离它们足够近时才会爆炸。"}]}