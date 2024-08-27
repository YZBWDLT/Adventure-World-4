# ===== 时间线 =====

execute @e[name=timeline,scores={time=100}] ~~~ kill @e[type=aw:npc]

# 失明5秒后，传送玩家到小黑屋
execute @e[name=timeline,scores={time=100}] ~~~ function lib/black_screen/teleport_respawner
execute @e[name=timeline,scores={time=100}] ~~~ effect @a clear

execute @e[name=timeline,scores={time=160}] ~~~ title @a title §1
execute @e[name=timeline,scores={time=160}] ~~~ title @a subtitle §3作者 §b一只卑微的量筒 狂野巴豆

execute @e[name=timeline,scores={time=250}] ~~~ title @a title §1
execute @e[name=timeline,scores={time=250}] ~~~ title @a subtitle §3联合作者 §bo绿叶o 文雨

execute @e[name=timeline,scores={time=340}] ~~~ title @a title §1
execute @e[name=timeline,scores={time=340}] ~~~ title @a subtitle §3出品 §b极筑工坊

execute @e[name=timeline,scores={time=429}] ~~~ title @a times 0 60 0

execute @e[name=timeline,scores={time=430}] ~~~ title @a title ■■ ■ ■■

execute @e[name=timeline,scores={time=470}] ~~~ execute @a ~~~ playsound random.anvil_use @s ~~~ 100 0.75
execute @e[name=timeline,scores={time=470}] ~~~ title @a title §l冒险 ■ ■■
execute @e[name=timeline,scores={time=480}] ~~~ title @a title §l冒险 小 ■■
execute @e[name=timeline,scores={time=490}] ~~~ title @a title §l冒险 小 世界

execute @e[name=timeline,scores={time=510}] ~~~ execute @a ~~~ playsound random.orb @s
execute @e[name=timeline,scores={time=510}] ~~~ title @a subtitle §o剑之试炼

### 游戏部分
execute @e[name=timeline,scores={time=610}] ~~~ function levels/chapter1/1_0/start
