# ===== 时间线 =====

# --- 激活状态3的对话线 ---
scoreboard players add @e[name=dialogue,scores={active=3}] time 1

# --- 刷新难度显示 ---
execute @e[name=tick,scores={time=18}] ~~~ kill @e[family=text_display,family=difficulty]

## 获取下一局的难度
## 因为加和是利用虚拟值，因此不能直接调用lib/get_data/difficulty方法
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=alivePlayersAmount,scores={data=1}] ~~~ scoreboard players set @e[name=difficulty] data 1
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=alivePlayersAmount,scores={data=2..3}] ~~~ scoreboard players set @e[name=difficulty] data 2
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=alivePlayersAmount,scores={data=4..6}] ~~~ scoreboard players set @e[name=difficulty] data 3
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=alivePlayersAmount,scores={data=7..}] ~~~ scoreboard players set @e[name=difficulty] data 4
execute @e[name=tick,scores={time=18}] ~~~ scoreboard players operation @e[name=difficulty] data += nextGame.difficultyAdder record
execute @e[name=tick,scores={time=18}] ~~~ scoreboard players set @e[name=difficulty,scores={data=..0}] data 1
execute @e[name=tick,scores={time=18}] ~~~ scoreboard players set @e[name=difficulty,scores={data=5..}] data 4

## 按照难度显示内容
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ summon aw:text_display -13 1.1 87 as_difficulty_text_display "§a1 标准"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ summon aw:text_display -11 2.3 86 as_difficulty_text_display "§7* 适合单人游玩"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ summon aw:text_display -11 2.0 86 as_difficulty_text_display "§7* 正常的刷怪"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=1}] ~~~ summon aw:text_display -11 1.7 86 as_difficulty_text_display "§7* 正常的怪物强度"

execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ summon aw:text_display -13 1.1 87 as_difficulty_text_display "§e2 困难"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ summon aw:text_display -11 2.3 86 as_difficulty_text_display "§7* 适合2~3人，或进阶玩家单人游玩"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ summon aw:text_display -11 2.0 86 as_difficulty_text_display "§7* 更强一级的刷怪"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=2}] ~~~ summon aw:text_display -11 1.7 86 as_difficulty_text_display "§7* 更高的怪物强度"

execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ summon aw:text_display -13 1.1 87 as_difficulty_text_display "§c3 极限"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ summon aw:text_display -11 2.3 86 as_difficulty_text_display "§7* 适合4~6人，或资深玩家单人游玩"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ summon aw:text_display -11 2.0 86 as_difficulty_text_display "§7* 高等级，更多的怪物"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=3}] ~~~ summon aw:text_display -11 1.7 86 as_difficulty_text_display "§7* 非常高的怪物强度"

execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ summon aw:text_display -13 1.1 87 as_difficulty_text_display "§44 地狱"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ summon aw:text_display -11 2.3 86 as_difficulty_text_display "§4* 适合7+人，或某些不要命的玩家单人游玩"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ summon aw:text_display -11 2.0 86 as_difficulty_text_display "§4* 海量高级怪物"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ summon aw:text_display -11 1.7 86 as_difficulty_text_display "§4* 逆天的怪物强度"

execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficultyAdder,scores={temp=-3}] ~~~ summon aw:text_display -13 0.8 87 as_difficulty_text_display "难度加和 | §b-3"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficultyAdder,scores={temp=-2}] ~~~ summon aw:text_display -13 0.8 87 as_difficulty_text_display "难度加和 | §b-2"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficultyAdder,scores={temp=-1}] ~~~ summon aw:text_display -13 0.8 87 as_difficulty_text_display "难度加和 | §a-1"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficultyAdder,scores={temp=0}] ~~~ summon aw:text_display -13 0.8 87 as_difficulty_text_display "难度加和 | §a0"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficultyAdder,scores={temp=1}] ~~~ summon aw:text_display -13 0.8 87 as_difficulty_text_display "难度加和 | §e1"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficultyAdder,scores={temp=2}] ~~~ summon aw:text_display -13 0.8 87 as_difficulty_text_display "难度加和 | §c2"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=difficultyAdder,scores={temp=3}] ~~~ summon aw:text_display -13 0.8 87 as_difficulty_text_display "难度加和 | §43"

# --- 检测切换难度 ---
execute @a[c=1] ~~~ detect -13 2 86 polished_blackstone_button 10 scoreboard players operation @e[name=difficultyAdder] temp = nextGame.difficultyAdder record
execute @a[c=1] ~~~ detect -13 2 86 polished_blackstone_button 10 scoreboard players add @e[name=difficultyAdder] temp 1
execute @a[c=1] ~~~ detect -13 2 86 polished_blackstone_button 10 scoreboard players set @e[name=difficultyAdder,scores={temp=!-3..3}] temp -3
execute @a[c=1] ~~~ detect -13 2 86 polished_blackstone_button 10 scoreboard players operation nextGame.difficultyAdder record = @e[name=difficultyAdder] temp
execute @a[c=1] ~~~ detect -13 2 86 polished_blackstone_button 10 setblock -13 2 86 polished_blackstone_button["facing_direction":2]

# --- 刷新难度显示 ---
execute @e[name=tick,scores={time=18}] ~~~ kill @e[family=text_display,family=mode]

## 按照难度显示内容
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=storyMode,scores={temp=0}] ~~~ summon aw:text_display -18 1.1 87 as_mode_text_display "§6纯战斗模式"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=storyMode,scores={temp=0}] ~~~ summon aw:text_display -20 2.3 86 as_mode_text_display "§7* 跳过大多数剧情，保留同样的战斗体验"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=storyMode,scores={temp=0}] ~~~ summon aw:text_display -20 2.0 86 as_mode_text_display "§7* 流程快，适合多人或速通玩家体验"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=storyMode,scores={temp=0}] ~~~ summon aw:text_display -20 1.7 86 as_mode_text_display "§7* 无剧透风险，不涉及和正传有关的剧情"

execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=storyMode,scores={temp=1}] ~~~ summon aw:text_display -18 1.1 87 as_mode_text_display "§b剧情模式"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=storyMode,scores={temp=1}] ~~~ summon aw:text_display -20 2.3 86 as_mode_text_display "§7* 承接前作剧情，除战斗外也有较长剧情流程"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=storyMode,scores={temp=1}] ~~~ summon aw:text_display -20 2.0 86 as_mode_text_display "§7* 适合单人体验，适合玩过前作的玩家体验"
execute @e[name=tick,scores={time=18}] ~~~ execute @e[name=storyMode,scores={temp=1}] ~~~ summon aw:text_display -20 1.7 86 as_mode_text_display "§c* 当心剧透！有意玩前作正传的玩家谨慎选择"

# --- 检测切换模式 ---
execute @a[c=1] ~~~ detect -18 2 86 polished_blackstone_button 10 scoreboard players operation @e[name=storyMode] temp = nextGame.storyMode record
execute @a[c=1] ~~~ detect -18 2 86 polished_blackstone_button 10 scoreboard players add @e[name=storyMode] temp 1
execute @a[c=1] ~~~ detect -18 2 86 polished_blackstone_button 10 scoreboard players set @e[name=storyMode,scores={temp=!0..1}] temp 0
execute @a[c=1] ~~~ detect -18 2 86 polished_blackstone_button 10 scoreboard players operation nextGame.storyMode record = @e[name=storyMode] temp
execute @a[c=1] ~~~ detect -18 2 86 polished_blackstone_button 10 setblock -18 2 86 polished_blackstone_button["facing_direction":2]

# --- 当玩家和张宇交互后 ---
# 启用对话，状态3
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name="张宇",tag=interacted] ~~~ scoreboard players set @e[name=dialogue] active 3
# 启用时间线
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name="张宇",tag=interacted] ~~~ function lib/states/timeline/enable
# 移除张宇的interacted标签
execute @e[name=timeline,scores={time=0}] ~~~ execute @e[name="张宇",tag=interacted] ~~~ tag @s remove interacted
# 启用对话后第10刻，施加失明
execute @e[name=timeline,scores={time=10}] ~~~ effect @a blindness 4 0 true
# 启用对话后第50刻，传送到小黑屋
execute @e[name=timeline,scores={time=50}] ~~~ function lib/black_screen/teleport_respawner
# 启用对话后第100刻，触发重置游戏
execute @e[name=timeline,scores={time=100}] ~~~ function levels/end/stage_3/start_from_stage_4

# --- 当玩家进入神殿后 ---

# 当玩家进入神殿后，移除按钮和NPC
execute @a[x=-18,y=-3,z=99,dx=5,dy=1,dz=3] ~~~ function levels/end/stage_4/on_exit
execute @a[x=-18,y=-3,z=99,dx=5,dy=1,dz=3] ~~~ kill @e[type=aw:npc]
execute @a[x=-18,y=-3,z=99,dx=5,dy=1,dz=3] ~~~ kill @e[type=aw:npc_author]

# 当玩家进入神殿后进入重置房间
execute @a[x=-18,y=-3,z=99,dx=5,dy=1,dz=3] ~~~ tp @a -88 1 -14
