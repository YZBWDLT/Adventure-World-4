# ===== 开始关卡 =====
# 开幕 | 初始化

# 游戏规则
function aw/lib/modify_data/init/gamerule

# 后台数据
function aw/lib/modify_data/init/data

# 启用时间线
function aw/lib/modify_data/states/timeline/enable

# 关闭 HUD
scoreboard players set allowHud data 0

# 玩家游戏模式
gamemode adventure @a

# 玩家位置与重生点
execute positioned 43 21 132 run tp @a ~~~
execute positioned 43 21 132 run setworldspawn ~~~
execute positioned 43 21 132 run spawnpoint @a ~~~

# 玩家物品
clear @a

# NPC
event entity @e[type=aw:npc] aw:remove_immediately

# 悬浮文本
kill @e[family=text_display]
summon aw:text_display "欢迎游玩§b§l冒险小世界：剑之试炼§r！" 43 24.8 124
summon aw:text_display "§7为感谢各位玩家对地图§b§l冒险世界：苏醒§r§7的支持" 43 24.3 124
summon aw:text_display "§7我们制作了此PVE地图作为外传" 43 24.0 124
summon aw:text_display "§a§l向前走，进入信标柱以开始游戏" 43 23.5 124

summon aw:text_display "§7为保证游戏体验，请将§b设置 - 音频 - 音乐§7调至§b100§7" 43 26.0 108

summon aw:text_display "§b§l剧情模式" 41 29.2 86
summon aw:text_display "§7* 承接前作剧情，除战斗外也有较长剧情流程" 41 28.7 86
summon aw:text_display "§7* 适合单人体验，适合玩过前作的玩家体验" 41 28.4 86
summon aw:text_display "§c* 当心剧透！有意玩前作正传的玩家谨慎选择" 41 28.1 86

summon aw:text_display "§6§l纯战斗模式" 47 29.2 86
summon aw:text_display "§7* 跳过大多数剧情，保留同样的战斗体验" 47 28.7 86
summon aw:text_display "§7* 流程快，适合多人或速通玩家体验" 47 28.4 86
summon aw:text_display "§7* 无剧透风险，不涉及和正传有关的剧情" 47 28.1 86

# 重置信标
setblock 43 25 86 beacon
setblock 45 25 86 beacon

# 时间
time set 6000

# 音乐
music stop
