# ===== 比翼鸟对话 =====

# --- 多人1级 ---
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7有勇无谋难成大事，智勇双全方为英雄。这句话送给你们或许正好哦。"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ function lib/states/dialogue/disable

# --- 多人2~3级 ---
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=2..3}] ~~~ execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7坚定不移地保持这样的友谊吧，希望在远方的新战场也能看到你们的英姿！"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=2..3}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=2..3}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ function lib/states/dialogue/disable

# --- 多人4级 ---
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7出神入化......出神入化......这样的默契我想真的是世上难得的了！"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ function lib/states/dialogue/disable

# --- 单人1~4级非F- ---
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ execute @e[name=score,scores={data=!-1}] ~~~ execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7感谢你的努力~接下来向着更高的目标进发如何呢~？"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=2..3}] ~~~ execute @e[name=score,scores={data=!-1}] ~~~ execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7很厉害呢！时间和成绩会奖励努力的你！"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ execute @e[name=score,scores={data=!-1}] ~~~ execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7真是难以置信......你就是上古的林乐本人吧？"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..4}] ~~~ execute @e[name=score,scores={data=!-1,data=0..59}] ~~~ execute @e[name=dialogue,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7没关系的，能走到这里已经是很了不起的了，不用管小鼠的反应~"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..4}] ~~~ execute @e[name=score,scores={data=!-1,data=120..}] ~~~ execute @e[name=dialogue,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7我已经没有更高的评价能称赞你了，谢谢你体验我们的地图！"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..4}] ~~~ execute @e[name=score,scores={data=!-1}] ~~~ execute @e[name=dialogue,scores={time=180}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7对了，我和巴豆学长的文案不知你们满不满意呢~？也欢迎大家体验冒险世界系列主线^w^~！"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..4}] ~~~ execute @e[name=score,scores={data=!-1}] ~~~ execute @e[name=dialogue,scores={time=200}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficulty,scores={data=1..4}] ~~~ execute @e[name=score,scores={data=!-1}] ~~~ execute @e[name=dialogue,scores={time=200}] ~~~ function lib/states/dialogue/disable

# --- 单人F- ---
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=-1}] ~~~ execute @e[name=dialogue,scores={time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a比翼鸟（KianaKasnala947）： §7太难了吗？没事的，多练一练，下次争取不用创造~"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=-1}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=score,scores={data=-1}] ~~~ execute @e[name=dialogue,scores={time=2}] ~~~ function lib/states/dialogue/disable
