# ===== 当地图结束时，按条件获取成就 =====

# --- 单人时 ---

# 神剑的恩惠 - 通过剑之试炼
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ scoreboard players set achievement.singlePlayer.completeMap record 1
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ tellraw @a {"rawtext":[{"translate":"你已获得成就 §b[神剑的恩惠]§f ！"}]}

# 让田英睡觉去吧！ - 不死亡通过剑之试炼
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @a[scores={deathTimes=0}] ~~~ scoreboard players set achievement.singlePlayer.notDied record 1
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @a[scores={deathTimes=0}] ~~~ tellraw @a {"rawtext":[{"translate":"你已获得成就 §b[让田英睡觉去吧！]§f ！"}]}

# 挑战自我 - 通过2级或更高难度的试炼
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficultyAdder,scores={data=1..3}] ~~~ scoreboard players set achievement.singlePlayer.difficulty2 record 1
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficultyAdder,scores={data=1..3}] ~~~ tellraw @a {"rawtext":[{"translate":"你已获得成就 §b[挑战自我]§f ！"}]}

# 举步维艰 - 通过3级或更高难度的试炼
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficultyAdder,scores={data=2..3}] ~~~ scoreboard players set achievement.singlePlayer.difficulty3 record 1
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficultyAdder,scores={data=2..3}] ~~~ tellraw @a {"rawtext":[{"translate":"你已获得困难成就 §d[举步维艰]§f ！"}]}

# 这不可能！ - 通过4级难度的试炼
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficultyAdder,scores={data=3}] ~~~ scoreboard players set achievement.singlePlayer.difficulty4 record 1
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=difficultyAdder,scores={data=3}] ~~~ tellraw @a {"rawtext":[{"translate":"你已获得传奇成就 §e[这不可能！]§f ！"}]}

# 别挡道，我很急！ - 在45分钟内通过试炼
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={time=..45}] ~~~ scoreboard players set achievement.singlePlayer.speedrun record 1
execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @e[name=playedMinute,scores={time=..45}] ~~~ tellraw @a {"rawtext":[{"translate":"你已获得成就 §b[别挡道，我很急！]§f ！"}]}

#<!> 纯天然 - 全程除了治疗药水之外，不使用其他药水通过试炼
#<!> execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @a[scores={usedPotion=0}] ~~~ scoreboard players set achievement.singlePlayer.noPotion record 1
#<!> execute @e[name=maxPlayersAmount,scores={data=1}] ~~~ execute @a[scores={usedPotion=0}] ~~~ tellraw @a {"rawtext":[{"translate":"你已获得困难成就 §d[纯天然]§f ！"}]}

# --- 多人时 ---
# 齐心协力 - 通过剑之试炼
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ scoreboard players set achievement.multiPlayer.completeMap record 1
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[齐心协力]§f ！"}]}

# 人多力量大 - 不团灭通过剑之试炼
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=allFailedTimes,scores={data=0}] ~~~ scoreboard players set achievement.multiPlayer.notDied record 1
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=allFailedTimes,scores={data=0}] ~~~ tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[人多力量大]§f ！"}]}

# 躺赢 - 有玩家的击杀数小于50
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a[scores={killAmount=..50}] ~~~ scoreboard players set achievement.multiPlayer.killLessThan50 record 1
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a[scores={killAmount=..50},c=1] ~~~ tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[躺赢]§f ！"}]}

# 全靠我带飞 - 有玩家的击杀数大于200
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a[scores={killAmount=200..}] ~~~ scoreboard players set achievement.multiPlayer.killMoreThan200 record 1
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @a[scores={killAmount=200..},c=1] ~~~ tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[全靠我带飞]§f ！"}]}

# 挑战极限 - 通过4级难度的试炼
function lib/get_data/difficulty
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ scoreboard players set achievement.multiPlayer.difficulty4 record 1
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=difficulty,scores={data=4}] ~~~ tellraw @a {"rawtext":[{"translate":"你们已获得困难成就 §d[挑战极限]§f ！"}]}

# 势如破竹 - 在45分钟内通过试炼
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=playedMinute,scores={time=..45}] ~~~ scoreboard players set achievement.multiPlayer.speedrun record 1
execute @e[name=maxPlayersAmount,scores={data=2..}] ~~~ execute @e[name=playedMinute,scores={time=..45}] ~~~ tellraw @a {"rawtext":[{"translate":"你们已获得成就 §b[势如破竹]§f ！"}]}
