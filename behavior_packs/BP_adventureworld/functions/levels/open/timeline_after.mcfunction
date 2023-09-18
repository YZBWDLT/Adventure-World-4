# 游戏开幕标题

### 标题部分
execute @e[name=timeline,scores={time=1}] ~~~ title @a times 10 30 10

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

execute @e[name=timeline,scores={time=490}] ~~~ tellraw @a {"rawtext":[{"text":"* §7为感谢各位玩家对地图《冒险世界：苏醒》的支持，我们制作了此PVE地图作为外传。欢迎大家支持前作，对剧情不了解的玩家也可以放心游玩。"}]}

execute @e[name=timeline,scores={time=640}] ~~~ tellraw @a {"rawtext":[{"text":"我叫§e林乐§f。"}]}

execute @e[name=timeline,scores={time=700}] ~~~ tellraw @a {"rawtext":[{"text":"我有两个好朋友，§e田英§f和§e米云溪§f。"}]}

execute @e[name=timeline,scores={time=760}] ~~~ tellraw @a {"rawtext":[{"text":"我们曾经一起消灭了邪恶的恶魔。"}]}

execute @e[name=timeline,scores={time=820}] ~~~ tellraw @a {"rawtext":[{"text":"今天，村里发生了一件奇特的事……"}]}

### 游戏部分
execute @e[name=timeline,scores={time=880}] ~~~ function levels/chapter1/1_0/start

## 时间轴结束，清理timeline盔甲架
execute @e[name=timeline,scores={time=881..}] ~~~ scoreboard players set @s active 0