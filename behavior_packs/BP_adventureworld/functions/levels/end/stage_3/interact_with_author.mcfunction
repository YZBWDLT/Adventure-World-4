# ===== 与作者交互时 =====

### 锁视角对话
execute @s[name="YZBWDLT"] ~~~ scoreboard players set @e[name=dialogue] active 4
execute @s[name="YZBWDLT"] ~~~ tp @e[name=playerPosition] -30 1 -37
execute @s[name="YZBWDLT"] ~~~ tp @e[name=facingPosition] @s

execute @s[name="Andy7343"] ~~~ scoreboard players set @e[name=dialogue] active 5
execute @s[name="Andy7343"] ~~~ tp @e[name=playerPosition] -30 1 -37
execute @s[name="Andy7343"] ~~~ tp @e[name=facingPosition] @s

execute @s[name="GreeLeaf"] ~~~ scoreboard players set @e[name=dialogue] active 6
execute @s[name="GreeLeaf"] ~~~ tp @e[name=playerPosition] -32 1 -31
execute @s[name="GreeLeaf"] ~~~ tp @e[name=facingPosition] @s

execute @s[name="KrisWenYu"] ~~~ scoreboard players set @e[name=dialogue] active 7
execute @s[name="KrisWenYu"] ~~~ tp @e[name=playerPosition] -32 1 -31
execute @s[name="KrisWenYu"] ~~~ tp @e[name=facingPosition] @s

execute @s[name="PigeonKI"] ~~~ scoreboard players set @e[name=dialogue] active 8
execute @s[name="PigeonKI"] ~~~ tp @e[name=playerPosition] -12 2 -32
execute @s[name="PigeonKI"] ~~~ tp @e[name=facingPosition] @s

execute @s[name="xiaoshu512"] ~~~ scoreboard players set @e[name=dialogue] active 9
execute @s[name="xiaoshu512"] ~~~ tp @e[name=playerPosition] -12 2 -32
execute @s[name="xiaoshu512"] ~~~ tp @e[name=facingPosition] @s

execute @s[name="KianaKasnala947"] ~~~ scoreboard players set @e[name=dialogue] active 10
execute @s[name="KianaKasnala947"] ~~~ tp @e[name=playerPosition] -12 2 -32
execute @s[name="KianaKasnala947"] ~~~ tp @e[name=facingPosition] @s

### 不锁视角对话
execute @s[name="Hfpa0117"] ~~~ scoreboard players set @e[name=dialogue] active 11
execute @s[name="xc13599305"] ~~~ scoreboard players set @e[name=dialogue] active 12
execute @s[name="PumpkinJui"] ~~~ scoreboard players set @e[name=dialogue] active 13
execute @s[name="Tuffy2020China"] ~~~ scoreboard players set @e[name=dialogue] active 14
execute @s[name="AnimalChalk2526"] ~~~ scoreboard players set @e[name=dialogue] active 15
execute @s[name="Ender5207541"] ~~~ scoreboard players set @e[name=dialogue] active 16
execute @s[name="RustyAbyss29193"] ~~~ scoreboard players set @e[name=dialogue] active 17
execute @s[name="EnderLife5409"] ~~~ scoreboard players set @e[name=dialogue] active 18
execute @s[name="OneKitty710926"] ~~~ scoreboard players set @e[name=dialogue] active 19
execute @s[name="FoxLanMo"] ~~~ scoreboard players set @e[name=dialogue] active 20
execute @s[name="kuanpan 9527"] ~~~ scoreboard players set @e[name=dialogue] active 21
execute @s[name="longlongxiaotao"] ~~~ scoreboard players set @e[name=dialogue] active 22

### 获取一次玩家数目
function lib/get_data/player_amount

### 取消其交互状态
tag @s remove interacted
