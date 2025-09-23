# ===== 暂停时时间线：选择了继续试炼后 =====

# --- 时间线流逝 ---
execute if score temp.pauseTimeline time matches 100..161 run scoreboard players add temp.pauseTimeline time 1

# --- 传送并禁止玩家行动 ---
execute if score temp.pauseTimeline time matches 140 if score chapter data matches 1 as @a at @s run function aw/levels/pause/events/continue/chapter1
execute if score temp.pauseTimeline time matches 140 if score chapter data matches 2 as @a at @s run function aw/levels/pause/events/continue/chapter2
execute if score temp.pauseTimeline time matches 140 if score chapter data matches 3 as @a at @s run function aw/levels/pause/events/continue/chapter3
execute if score temp.pauseTimeline time matches 140 if score chapter data matches 4 as @a at @s run function aw/levels/pause/events/continue/chapter4
execute if score temp.pauseTimeline time matches 140 if score chapter data matches 5 as @a at @s run function aw/levels/pause/events/continue/chapter5
execute if score temp.pauseTimeline time matches 140 if score chapter data matches 6 as @a at @s run function aw/levels/pause/events/continue/chapter6
execute if score temp.pauseTimeline time matches 140 if score chapter data matches 7 as @a at @s run function aw/levels/pause/events/continue/chapter7
execute if score temp.pauseTimeline time matches 160 run inputpermission set @a movement enabled
execute if score temp.pauseTimeline time matches 160 run inputpermission set @a camera enabled

# --- 传送完毕后，撤销暂停状态 ---
execute if score temp.pauseTimeline time matches 161 run function aw/levels/pause/complete
