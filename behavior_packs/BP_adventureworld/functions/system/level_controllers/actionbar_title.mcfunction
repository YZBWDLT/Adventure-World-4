# ===== 快捷栏标题控制器 =====

## --- 初始化 ---
### 获取怪物和玩家数目
function methods/get_monster_amount
function methods/get_player_amount

## --- 正在进行的关卡 ---
## temp3.level=0 | 每5tick显示一次

### 玩家数为1时，不显示玩家数量
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=allPlayersAmount,scores={background=1}] ~~~ function system/level_controllers/actionbar_singleplayer
### 玩家数大于1时，显示玩家数量
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=allPlayersAmount,scores={background=2..}] ~~~ function system/level_controllers/actionbar_multiplayer

## --- 已完成的关卡 ---
## temp3.level=1 | 每5tick显示一次

### 当玩家在正常关卡区域时，显示对应关卡编号 | 7-0时会有一段时间设定为701，此时不应该显示
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1,background=!701}] ~~~ execute @a[scores={temp2=1..,temp3=1..7}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§l%%s-%%s §r§f| §a✔ 关卡已完成","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}},{"score":{"objective":"temp3","name":"@s"}}]}}]}

execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={temp2=1,temp3=0}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§l%%s §r§f| §e§l沙 漠 神 殿","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={temp2=2,temp3=0}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§l%%s §r§f| §a§l丛 林 神 殿","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={temp2=3,temp3=0}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§l%%s §r§f| §b§l湖 泊 神 殿","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={temp2=4,temp3=0}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§l%%s §r§f| §3§l寒 冰 神 殿","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={temp2=5,temp3=0}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§l%%s §r§f| §f§l红 石 神 殿","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={temp2=6,temp3=0}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§l%%s §r§f| §7§l山 峦 神 殿","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={temp2=6,temp3=9}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§f§l剑 之 神 殿","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}
execute @e[name=tick,scores={time=!0..4,time=!6..10,time=!11..15,time=!16..20}] ~~~ execute @e[name=level,scores={temp3=1}] ~~~ execute @a[scores={temp2=7,temp3=0}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§l%%s §r§f| §c§l封 印 神 殿","with":{"rawtext":[{"score":{"objective":"temp2","name":"@s"}}]}}]}

## --- 特殊快捷栏标题 ---

### 物品快捷栏标题
function system/level_controllers/actionbar_items

### 无效位置提示 | 仅开发版
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[scores={inLevelArea=-1}] ~~~ titleraw @s actionbar {"rawtext":[{"translate":"§c错误：无法检测的位置"}]}

### 调试性内容
# titleraw @a actionbar {"rawtext":[{"translate":"wave=%%s | lastWaveCompleted=%%s | monsterSummonDelay=%%s","with":{"rawtext":[{"score":{"objective":"background","name":"@e[name=wave]"}},{"score":{"objective":"background","name":"@e[name=lastWaveCompleted]"}},{"score":{"objective":"time","name":"@e[name=monsterSummonDelay]"}}]}}]}