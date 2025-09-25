# ===== 剧情：量筒 =====

# --- 若未启用时间流逝，则启用 ---
execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---

## 第 1 句话
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7感谢你游玩此地图！不知道你对这个地图满不满意呢？§8(1/5)"}]}
execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=0,aw:animation="none"}] aw:animation_speak

## 第 2 句话
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7这张地图耗费了我们巨大的心血，说来有意思，我们本来一开始并没有打算做的这么大，后来东西越塞越多，搞成了这个样子......耗时也是超过了一年qwq§8(2/5)"}]}
execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=0,aw:animation="none"}] aw:animation_speak

## 第 3 句话
execute if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7现在版本更新了，有很多新内容，又多了几个月的耗时，不知道老玩家们有没有注意到呢~§8(3/5)"}]}
execute if score timeline time matches 120 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=0,aw:animation="none"}] aw:animation_speak

## 第 4 句话
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7如果对剧情感兴趣的话可以试试正传《冒险世界：苏醒》，也可以期待一下我们接下来的大活《冒险世界：筑梦》！§8(4/5)"}]}
execute if score timeline time matches 180 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=0,aw:animation="none"}] aw:animation_speak

## 第 5 句话
execute if score timeline time matches 240 run tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7遇到问题欢迎来我们的测试群讨论：\n673941729\n！最后再次感谢你的游玩~！§8(5/5)"}]}
execute if score timeline time matches 240 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=0,aw:animation="none"}] aw:animation_speak

# --- 剧情结束 ---
execute if score timeline time matches 241.. run scoreboard players set timeline active 1
execute if score timeline time matches 241.. run function aw/lib/modify_data/timeline/disable_time_lapse
