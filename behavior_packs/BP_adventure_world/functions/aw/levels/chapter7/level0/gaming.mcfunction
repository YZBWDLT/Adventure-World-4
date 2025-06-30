# ===== 关卡游戏时时间线 =====
# 7-0 | 剑之神殿

# --- 剧情 ---

# 纯战斗模式
execute if score storyMode settings matches 0 if score timeline time matches 180 run tellraw @a {"rawtext":[{"translate":"* 当你再次睁开眼时，发现自己身处纯白色的神殿之中......"}]}
execute if score storyMode settings matches 0 if score timeline time matches 280 run tellraw @a {"rawtext":[{"translate":"* 你看到了那把传说的武器，它现在正散发着与众不同的光芒......"}]}
execute if score storyMode settings matches 0 if score timeline time matches 380 run tellraw @a {"rawtext":[{"translate":"* 突然间，天上一束光照了下来，落在了台座上。"}]}

execute if score storyMode settings matches 0 if score timeline time matches 1100 run tellraw @a {"rawtext":[{"translate":"* 随着剑的消失，你惊奇的发现剑很识趣地替换掉了你手里的钢剑。"}]}
execute if score storyMode settings matches 0 if score timeline time matches 1200 run tellraw @a {"rawtext":[{"translate":"* 它告诉了你它的名字 - §e旷野之剑§r。"}]}
## [1300] 剑拔出后：剧情结束后，施加失明效果
execute if score storyMode settings matches 0 if score timeline time matches 1300 run tellraw @a {"rawtext":[{"translate":"* 你感觉身体再次变轻，听到了一个声音......"}]}
## [1450] 剑拔出后：黑屏并锁定玩家行动
## [1600] 剧情结束：剧情结束

# 剧情模式
## [1~439] 剑拔出时：释放未拔剑的粒子
## [60] 动画开幕：将玩家传送到剑之神殿
## [120] 动画开幕：播放标题和音效，解除视角锁定
## [180] 动画开幕：移除玩家的失明效果
execute if score storyMode settings matches 1 if score timeline time matches 180 run tellraw @a {"rawtext":[{"translate":"* 当我再次睁开眼时，发现自己身处纯白色的神殿之中......"}]}
execute if score storyMode settings matches 1 if score timeline time matches 280 run tellraw @a {"rawtext":[{"translate":"* 我终于看到了那把传说的武器，§e旷野之剑§r，它现在正散发着与众不同的光芒......"}]}
execute if score storyMode settings matches 1 if score timeline time matches 380 run tellraw @a {"rawtext":[{"translate":"* 突然间，天上一束光照了下来，落在了台座上。"}]}

## [380] 剑拔出时：炸开天花板
## [440] 剑拔出时：设置剑为正在拔出状态，并释放粒子和播放音效
## [445~470] 剑拔出时：开始逐步释放粒子
## [600] 剑拔出时：播放剑拔出的音乐
## [760] 剑拔出时：剑瞬间拔出时，释放粒子
## [1040] 剑拔出时：播放消失粒子和音效，移除剑实体并给予玩家物品
execute if score storyMode settings matches 1 if score timeline time matches 1100 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿！我成功拿到旷野之剑了！你去把田英叫起来！"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1180 run tellraw @a {"rawtext":[{"text":"* §c§kABCDEFGHIJK"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1260 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7嗯？怎么这么吵啊？"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1340 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7对不起......前面......干扰......"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1420 run tellraw @a {"rawtext":[{"text":"* §c§kABGHIJK"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1500 run tellraw @a {"rawtext":[{"text":"* §f林乐（我）： §7云儿？"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1580 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7但接下来......最后的......我们相信你......"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1660 run tellraw @a {"rawtext":[{"text":"* §c§kABGHIrjafasfJK"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1740 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7最后......【封......殿】......"}]}
## [1820] 剑拔出后：剧情结束后，施加失明效果
execute if score storyMode settings matches 1 if score timeline time matches 1820 run tellraw @a {"rawtext":[{"text":"* §c米云溪： §7【取得神剑者，仍......认可方能使用，此乃最终之试炼】......"}]}
execute if score storyMode settings matches 1 if score timeline time matches 1900 run tellraw @a {"rawtext":[{"text":"* §c§kABCDyryfgudjEFGHIJK"}]}
## [1950] 剑拔出后：黑屏并锁定玩家行动
## [2100] 剧情结束：剧情结束

# --- 动画开幕 ---

## [60] 将玩家传送到剑之神殿
execute if score timeline time matches 60 run tp @a -79 -39 105 facing -87 -37 105

## [120] 播放标题和音效，解除视角锁定
execute if score timeline time matches 120 run title @a title §f§l剑 之 神 殿
execute if score timeline time matches 120 run title @a subtitle §k7§r-§k0
execute if score timeline time matches 120 as @a at @s run playsound beacon.power @s ~~~ 1 0.75 1
execute if score timeline time matches 120 run function aw/lib/modify_data/stop_dialogue_keep

## [180] 移除玩家的失明效果
execute if score timeline time matches 180 run effect @a blindness 0 1 true

# --- 剑拔出时 ---

## [1~439] 释放未拔剑的粒子
## 每秒 1 次
execute if score timeline time matches 1..439 if score tick time matches 0 run particle aw:wild_sword_stage_1 -87 -38 105

## [380] 炸开天花板
execute if score timeline time matches 380 run particle aw:explosion -87 0 105
execute if score timeline time matches 380 as @a at @s run playsound random.explode @s
execute if score timeline time matches 380 run structure load aw:7_0_boomed -91 -1 99

## [440] 设置剑为正在拔出状态，并释放粒子和播放音效
## （备注：下面的时间点完全由预先设计的动画决定。见动画定义：animation.wild_sword.drawing）
execute if score timeline time matches 440 run event entity @e[type=aw:wild_sword] aw:set_drawing
execute if score timeline time matches 440 run playsound random.levelup @s ~~~ 1 0.25
execute if score timeline time matches 440 run particle aw:wild_sword_stage_2 -87 -38 105

## [445~470] 开始逐步释放粒子 
execute if score timeline time matches 445 run particle aw:wild_sword_particle_a -87 -39 105
execute if score timeline time matches 445 run particle aw:wild_sword_particle_b -87 -39 105
execute if score timeline time matches 445 run particle aw:wild_sword_particle_c -87 -39 105
execute if score timeline time matches 445 run particle aw:wild_sword_particle_d -87 -35 105
execute if score timeline time matches 450 run particle aw:wild_sword_particle_d -87 -30 105
execute if score timeline time matches 455 run particle aw:wild_sword_particle_d -87 -25 105
execute if score timeline time matches 460 run particle aw:wild_sword_particle_d -87 -20 105
execute if score timeline time matches 465 run particle aw:wild_sword_particle_d -87 -15 105
execute if score timeline time matches 470 run particle aw:wild_sword_particle_d -87 -10 105

## [600] 播放剑拔出的音乐
## （为剑瞬间拔出时的前 8 秒，8 秒后就能正好卡点）
execute if score timeline time matches 600 as @a at @s run playsound aw.sword_temple_drawing_sword @s ~~~ 0.5 1

## [760] 剑瞬间拔出时，释放粒子
## （音效为动画自行播放）
execute if score timeline time matches 760 run particle aw:wild_sword_stage_3_1 -87 -38 105
execute if score timeline time matches 760 run particle aw:wild_sword_stage_3_2 -87 -38 105

## [1040] 播放消失粒子和音效，移除剑实体并给予玩家物品
execute if score timeline time matches 1040 as @a at @s run playsound aw.sword_turn_to_light @s ~~~
execute if score timeline time matches 1040 run particle aw:wild_sword_disappear -87 -37 105
execute if score timeline time matches 1040 run event entity @e[type=aw:wild_sword] aw:remove_immediately
execute if score timeline time matches 1040 run clear @a aw:steel_sword
execute if score timeline time matches 1040 run clear @a aw:wild_sword
execute if score timeline time matches 1040 run give @a aw:wild_sword 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# --- 剑拔出后 ---

## [纯战斗1300, 剧情1820] 剧情结束后，施加失明效果
execute if score storyMode settings matches 0 if score timeline time matches 1300 run effect @a blindness 30 0 true
execute if score storyMode settings matches 1 if score timeline time matches 1820 run effect @a blindness 30 0 true

## [纯战斗1450, 剧情1950] 黑屏并锁定玩家行动
execute if score storyMode settings matches 0 if score timeline time matches 1450 run camera @a fade time 2 7 2
execute if score storyMode settings matches 0 if score timeline time matches 1450 run function aw/lib/modify_data/start_dialogue_keep
execute if score storyMode settings matches 1 if score timeline time matches 1950 run camera @a fade time 2 7 2
execute if score storyMode settings matches 1 if score timeline time matches 1950 run function aw/lib/modify_data/start_dialogue_keep

# --- 剧情结束 ---
## [纯战斗1600, 剧情2100] 剧情结束
execute if score storyMode settings matches 0 if score timeline time matches 1600 run function aw/levels/chapter7/level0/complete
execute if score storyMode settings matches 1 if score timeline time matches 2100 run function aw/levels/chapter7/level0/complete
