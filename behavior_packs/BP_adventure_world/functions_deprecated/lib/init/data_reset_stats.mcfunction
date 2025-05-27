# ===== 地图数据重置 =====
# 本函数仅用于重置统计性的数据

# --- 单人成就 ---
scoreboard players set achievement.singlePlayer.finishMap record 0
scoreboard players set achievement.singlePlayer.notDied record 0
scoreboard players set achievement.singlePlayer.difficulty2 record 0
scoreboard players set achievement.singlePlayer.difficulty3 record 0
scoreboard players set achievement.singlePlayer.difficulty4 record 0
scoreboard players set achievement.singlePlayer.speedrun record 0
scoreboard players set achievement.singlePlayer.noPotion record 0

# --- 多人成就 ---
scoreboard players set achievement.multiPlayer.finishMap record 0
scoreboard players set achievement.multiPlayer.notDied record 0
scoreboard players set achievement.multiPlayer.difficulty4 record 0
scoreboard players set achievement.multiPlayer.speedrun record 0
scoreboard players set achievement.multiPlayer.killLessThan50 record 0
scoreboard players set achievement.multiPlayer.killMoreThan200 record 0

# --- 统计数据 ---
scoreboard players set mapCompletedTimes record 0
scoreboard players set bestTimeSecond1 record 59
scoreboard players set bestTimeMinute1 record 9999
scoreboard players set bestTimeSecond2 record 59
scoreboard players set bestTimeMinute2 record 9999
scoreboard players set bestTimeSecond3 record 59
scoreboard players set bestTimeMinute3 record 9999
scoreboard players set bestTimeSecond4 record 59
scoreboard players set bestTimeMinute4 record 9999

# --- 下一局的设置 ---
scoreboard players set temp.difficultyAdder record 0
scoreboard players set temp.storyMode record 1
