# ===== 重新开始游戏 =====

# --- 重置地图数据 ---
function lib/init/data_reset_normal

# --- 获取上一局的开局设置 ---
scoreboard players operation @e[name=storyMode] data = nextGame.storyMode record
scoreboard players operation @e[name=difficultyAdder] data = nextGame.difficultyAdder record

# --- 设置一些杂项内容 ---
time set 6000
kill @e[family=text_display]
kill @e[family=npc]

# --- 开始游戏 ---
execute @e[name=storyMode,scores={data=0}] ~~~ function levels/open/combat_mode/start
execute @e[name=storyMode,scores={data=1}] ~~~ function levels/open/story_mode/start
