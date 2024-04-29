# ===== 时间线 =====

# --- 对话线的设置 ---
## 激活3或以上的对话线
scoreboard players add @e[name=dialogue,scores={active=3..}] time 1
## 对于一些需要锁定视角的对话，进行额外的人为锁定视角
execute @e[name=dialogue,scores={active=4..10}] ~~~ execute @e[name=playerPosition] ~~~ tp @a ~~~ facing @e[name=facingPosition,c=1]
execute @e[name=dialogue,scores={active=4..10}] ~~~ execute @e[name=tick,scores={time=15}] ~~~ function lib/get_data/player_amount
execute @e[name=dialogue,scores={active=4..10}] ~~~ execute @e[name=tick,scores={time=15}] ~~~ execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ effect @a invisibility 30 0 true

# --- 切换成就 ---
execute @a[c=1] ~~~ detect -25 2 -45 birch_button 10 function levels/end/stage_3/button_functions/next_achievement
execute @a[c=1] ~~~ detect -29 2 -45 birch_button 10 function levels/end/stage_3/button_functions/previous_achievement

# --- 显示统计数据 ---
# 人数不同时显示的内容也不同
execute @a[c=1] ~~~ detect -26 2 -51 birch_button 9 function levels/end/stage_3/button_functions/show_stats

# --- 显示制作人 ---
## 按下-25 7 -51的按钮后，显示完整的制作人名单
execute @a[c=1] ~~~ detect -25 7 -51 birch_button 9 function levels/end/stage_3/button_functions/show_credits

## 接近四组作者组时的伪记分板
execute @e[name=tick,scores={time=13}] ~~~ execute @a[x=-34,y=0,z=-37,dx=5,dy=5,dz=5] ~~~ titleraw @a actionbar {"rawtext":[{"translate":"§a§l=== 主作者组 ===\n\n§r§b一只卑微的量筒§7（YZBWDLT）\n§r§f命令函数&行为包、策划&关卡设计\n资源包、地图测试\n\n§r§b狂野巴豆§7（Andy7343）\n§r§f命令函数&行为包、策划&关卡设计\n资源包、剧情设计、地图测试\n\n§b可以和他们聊天看看他们的留言~！"}]}
execute @e[name=tick,scores={time=13}] ~~~ execute @a[x=-12,y=0,z=-35,dx=6,dy=5,dz=6] ~~~ titleraw @a actionbar {"rawtext":[{"translate":"§a§l=== 剧情组 ===\n\n§r§b比翼鸟§7（KianaKasnala947）\n§r§f剧情逻辑优化、田英对话优化\n地图测试\n\n§r§b鸽子§7（PigeonKI）\n§r§f剧情逻辑优化、米云溪对话优化\n地图测试\n\n§r§b小鼠§7（xiaoshu512）\n§r§f林乐对话优化、地图测试\n\n§b可以和他们聊天看看他们的留言~！"}]}
execute @e[name=tick,scores={time=13}] ~~~ execute @a[x=-34,y=0,z=-31,dx=5,dy=5,dz=5] ~~~ titleraw @a actionbar {"rawtext":[{"translate":"§a§l=== 建筑&资源包组 ===\n\n§r§bo绿叶o§7（GreeLeaf）\n§r§f全地图建筑、地图测试\n\n§r§b文雨§7（KrisWenYu）\n§r§f资源包NPC皮肤&物品图标绘制\n地图测试\n\n§b可以和他们聊天看看他们的留言~！"}]}
execute @e[name=tick,scores={time=13}] ~~~ execute @a[x=-32,y=0,z=-25,dx=15,dy=5,dz=11] ~~~ titleraw @a actionbar {"rawtext":[{"translate":"§a§l=== 测试组 ===\n\n§r§b星辰§7（xc13599305）\n§r§f首批通关单人4级的玩家\n\n§b帕§7（Hfpa0117）\n§r§f首批通关单人4级的玩家\n\n§b火卫三§7（AnimalChalk2526）\n§b南瓜汁§7（PumpkinJui）\n§b蒙德人§7（Tuffy2020China）\n§b基岩§7（Ender5207541）\n§b决心§7（RustyAbyss29193）\n§b千里§7（EnderLife5409）\n§b水晶哥§7（OneKitty710926）\n§b风暴§7（FoxLanMo）\n§b宽判§7（kuanpan 9527）\n§b龙龙§7（longlongxiaotao）\n\n§b可以和他们聊天看看他们的留言~！"}]}

## 和作者说话时
execute @e[name=dialogue,scores={active=0}] ~~~ execute @e[family=author,tag=interacted] ~~~ function levels/end/stage_3/interact_with_author

# --- 当玩家和张宇交互后 ---

# 启用对话和时间线
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name="张宇",tag=interacted] ~~~ scoreboard players set @e[name=dialogue] active 3
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name="张宇",tag=interacted] ~~~ function lib/states/timeline/enable

# 移除张宇的interacted标签
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name="张宇",tag=interacted] ~~~ tag @s remove interacted

# 启用对话后第10刻，施加失明、传送到小黑屋、触发重置游戏
execute @e[name=timeline,scores={time=10}] ~~~ effect @a blindness 4 0 true
execute @e[name=timeline,scores={time=50}] ~~~ function lib/black_screen/teleport_respawner
execute @e[name=timeline,scores={time=100}] ~~~ function levels/end/stage_4/start
