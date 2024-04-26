# ===== 时间线 =====

# --- 下一阶段的检测 --- 
# 当玩家到达特定位置后进入下一阶段
execute @e[name="米云溪"] ~~~ execute @a[r=5,c=1] ~~~ function levels/village/stage_3/start

# --- 玩家卡住后的提示 ---
# 当玩家卡住960（对话时长）+3*60*20=3600（3分钟）=4560刻后，进行通路提示
execute @e[name=timeline,scores={time=4560}] ~~~ summon aw:text_display "提示：从这里进去开启下一段对话" 9 2 26
execute @e[name=timeline,scores={time=4560}] ~~~ tellraw @a {"rawtext":[{"translate":"§b看来你卡在这里已经很久了！其实农田对面的树林里是有通路的，去看看吧？"}]}
execute @e[name=timeline,scores={time=4561}] ~~~ function lib/states/timeline/enable_without_flowing
