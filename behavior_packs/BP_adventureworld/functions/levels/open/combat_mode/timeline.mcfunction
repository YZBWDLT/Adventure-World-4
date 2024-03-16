# ===== 战斗模式的游戏开幕标题 =====

execute @e[name=timeline,scores={time=40}] ~~~ title @a title §1
execute @e[name=timeline,scores={time=40}] ~~~ title @a subtitle §3制作 §b狂野巴豆

execute @e[name=timeline,scores={time=130}] ~~~ title @a title §1
execute @e[name=timeline,scores={time=130}] ~~~ title @a subtitle §3联合制作 §b量筒 绿叶

execute @e[name=timeline,scores={time=220}] ~~~ title @a title §1
execute @e[name=timeline,scores={time=220}] ~~~ title @a subtitle §3出品 §b极筑工坊

execute @e[name=timeline,scores={time=309}] ~~~ title @a times 0 60 0

execute @e[name=timeline,scores={time=310}] ~~~ title @a title ■■ ■ ■■

execute @e[name=timeline,scores={time=350}] ~~~ execute @a ~~~ playsound random.anvil_use @s ~~~ 100 0.75
execute @e[name=timeline,scores={time=350}] ~~~ title @a title §l冒险 ■ ■■
execute @e[name=timeline,scores={time=360}] ~~~ title @a title §l冒险 小 ■■
execute @e[name=timeline,scores={time=370}] ~~~ title @a title §l冒险 小 世界

execute @e[name=timeline,scores={time=390}] ~~~ execute @a ~~~ playsound random.orb @s
execute @e[name=timeline,scores={time=390}] ~~~ title @a subtitle §o剑之试炼

### 游戏部分
execute @e[name=timeline,scores={time=690}] ~~~ function levels/chapter1/1_0/start
