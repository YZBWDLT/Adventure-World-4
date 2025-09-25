# ===== 剧情：橘子 =====

# --- 若未启用时间流逝，则启用 ---
execute if score timeLapse data matches 0 run function aw/lib/modify_data/timeline/enable_time_lapse

# --- 剧情 ---

## 第 1 句话
execute if score timeline time matches 1 run tellraw @a {"rawtext":[{"translate":"* §a橘子（freeorange114）： §7咱们生电大佬的PvE技术可不是盖的（除我之外），拒绝刻板印象（除我之外）！§8(1/4)"}]}
execute if score timeline time matches 1 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=16,aw:animation="none"}] aw:animation_speak

## 第 2 句话
execute if score timeline time matches 60 run tellraw @a {"rawtext":[{"translate":"* §a橘子（freeorange114）： §7毕竟我打难度一也要死两三次的人（悲 §8(2/4)"}]}
execute if score timeline time matches 60 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=16,aw:animation="none"}] aw:animation_speak

## 第 3 句话
execute if score timeline time matches 120 run tellraw @a {"rawtext":[{"translate":"* §a橘子（freeorange114）： §7如果你有能力，就快快去挑战一下更高难度吧！§8(3/4)"}]}
execute if score timeline time matches 120 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=16,aw:animation="none"}] aw:animation_speak

## 第 4 句话
execute if score timeline time matches 180 run tellraw @a {"rawtext":[{"translate":"* §a橘子（freeorange114）： §7如果觉得意犹未尽，或者想要有解密和探索的元素，请期待巴豆的《冒险世界：筑梦》吧！§8(4/4)"}]}
execute if score timeline time matches 180 run event entity @e[type=aw:npc,has_property={aw:is_author=true,aw:skin=16,aw:animation="none"}] aw:animation_speak

# --- 剧情结束 ---
execute if score timeline time matches 181.. run scoreboard players set timeline active 1
execute if score timeline time matches 181.. run function aw/lib/modify_data/timeline/disable_time_lapse
