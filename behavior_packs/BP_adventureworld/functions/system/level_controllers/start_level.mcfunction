# === 开始游戏控制器 ===

## 当玩家进入对应检测区域时，检测他是否处于游玩状态，如果不是则给予其一个进入关卡(intolevel)的标签
## 检测范围需根据不同关卡的位置来调整
execute @e[name=level,scores={background=100..109}] ~~~ execute @a[x=-119,y=0,z=15,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=100..119}] ~~~ execute @a[x=-128,y=4,z=51,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=100..129}] ~~~ execute @a[x=-138,y=10,z=31,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=100..139}] ~~~ execute @a[x=-80,y=17,z=25,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=200..209}] ~~~ execute @a[x=-77,y=17,z=59,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=210..219}] ~~~ execute @a[x=-75,y=-1,z=67,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=200..229}] ~~~ execute @a[x=-146,y=-22,z=59,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=200..239}] ~~~ execute @a[x=-175,y=-22,z=27,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=300..309}] ~~~ execute @a[x=-191,y=-22,z=27,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=300..319}] ~~~ execute @a[x=-174,y=-22,z=8,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=300..329}] ~~~ execute @a[x=-165,y=-22,z=27,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=300..339}] ~~~ execute @a[x=-173,y=-15,z=21,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=300..349}] ~~~ execute @a[x=-175,y=16,z=-10,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=400..409}] ~~~ execute @a[x=-169,y=16,z=-22,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=400..419}] ~~~ execute @a[x=-158,y=6,z=-2,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=400..429}] ~~~ execute @a[x=-158,y=-13,z=11,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=400..439}] ~~~ execute @a[x=-142,y=-32,z=4,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=400..449}] ~~~ execute @a[x=-97,y=-32,z=-9,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=600..609}] ~~~ execute @a[x=-77,y=-32,z=-51,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=500..509}] ~~~ execute @a[x=-82,y=-32,z=-30,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=600..619}] ~~~ execute @a[x=-82,y=-20,z=-47,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=600..629}] ~~~ execute @a[x=-77,y=-38,z=-16,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=600..639}] ~~~ execute @a[x=-77,y=-40,z=21,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=700..719}] ~~~ execute @a[x=-164,y=-19,z=108,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=700..729}] ~~~ execute @a[x=-197,y=-19,z=95,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel
execute @e[name=level,scores={background=700..739}] ~~~ execute @a[x=-228,y=-19,z=97,dx=4,dy=4,dz=4] ~~~ execute @s[scores={isAlive=2},tag=!intoLevel] ~~~ tag @s add intoLevel

## 当检测到有玩家进入关卡，开始关卡
## 检测范围需根据不同关卡的位置来调整
execute @e[name=level,scores={background=100..109}] ~~~ execute @a[x=-119,y=0,z=15,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter1/1_1/start_level
execute @e[name=level,scores={background=100..119}] ~~~ execute @a[x=-128,y=4,z=51,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter1/1_2/start_level
execute @e[name=level,scores={background=100..129}] ~~~ execute @a[x=-138,y=10,z=31,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter1/1_3/start_level
execute @e[name=level,scores={background=100..139}] ~~~ execute @a[x=-80,y=17,z=25,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter2/2_0/start
execute @e[name=level,scores={background=200..209}] ~~~ execute @a[x=-77,y=17,z=59,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter2/2_1/start_level
execute @e[name=level,scores={background=210..219}] ~~~ execute @a[x=-75,y=-1,z=67,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter2/2_2/start_level
execute @e[name=level,scores={background=200..229}] ~~~ execute @a[x=-146,y=-22,z=59,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter2/2_3/start_level
execute @e[name=level,scores={background=200..239}] ~~~ execute @a[x=-175,y=-22,z=27,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter3/3_0/start
execute @e[name=level,scores={background=300..309}] ~~~ execute @a[x=-191,y=-22,z=27,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter3/3_1/start_level
execute @e[name=level,scores={background=300..319}] ~~~ execute @a[x=-174,y=-22,z=8,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter3/3_2/start_level
execute @e[name=level,scores={background=300..329}] ~~~ execute @a[x=-165,y=-22,z=27,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter3/3_3/start_level
execute @e[name=level,scores={background=300..339}] ~~~ execute @a[x=-173,y=-15,z=21,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter3/3_4/start_level
execute @e[name=level,scores={background=300..349}] ~~~ execute @a[x=-175,y=16,z=-10,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter4/4_0/start
execute @e[name=level,scores={background=400..409}] ~~~ execute @a[x=-169,y=16,z=-22,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter4/4_1/start_level
execute @e[name=level,scores={background=400..419}] ~~~ execute @a[x=-158,y=6,z=-2,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter4/4_2/start_level
execute @e[name=level,scores={background=400..429}] ~~~ execute @a[x=-158,y=-13,z=11,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter4/4_3/start_level
execute @e[name=level,scores={background=400..439}] ~~~ execute @a[x=-142,y=-32,z=4,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter4/4_4/start_level
execute @e[name=level,scores={background=400..449}] ~~~ execute @a[x=-97,y=-32,z=-9,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter5/start
execute @e[name=level,scores={background=500..509}] ~~~ execute @a[x=-82,y=-32,z=-30,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter6/6_0/start
execute @e[name=level,scores={background=600..609}] ~~~ execute @a[x=-77,y=-32,z=-51,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter6/6_1/start_level
execute @e[name=level,scores={background=600..619}] ~~~ execute @a[x=-82,y=-20,z=-47,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter6/6_2/start_level
execute @e[name=level,scores={background=600..629}] ~~~ execute @a[x=-77,y=-38,z=-16,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter6/6_3/start_level
execute @e[name=level,scores={background=600..639}] ~~~ execute @a[x=-77,y=-40,z=21,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter6/6_4/start_level
execute @e[name=level,scores={background=700..719}] ~~~ execute @a[x=-164,y=-19,z=108,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter7/7_2/start_level
execute @e[name=level,scores={background=700..729}] ~~~ execute @a[x=-197,y=-19,z=95,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter7/7_3/start_level
execute @e[name=level,scores={background=700..739}] ~~~ execute @a[x=-228,y=-19,z=97,dx=4,dy=4,dz=4] ~~~ execute @s[tag=intoLevel,scores={isAlive=2}] ~~~ function levels/chapter7/7_4/start_level

## 检测到绳枪进入检测区域时，移除此绳枪
execute @e[name=level,scores={background=100..109}] ~~~ execute @e[family=hookshot,x=-119,y=0,z=15,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=100..119}] ~~~ execute @e[family=hookshot,x=-128,y=4,z=51,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=100..129}] ~~~ execute @e[family=hookshot,x=-138,y=10,z=31,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=100..139}] ~~~ execute @e[family=hookshot,x=-80,y=17,z=25,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=200..209}] ~~~ execute @e[family=hookshot,x=-77,y=17,z=59,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=210..219}] ~~~ execute @e[family=hookshot,x=-75,y=-1,z=67,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=200..229}] ~~~ execute @e[family=hookshot,x=-146,y=-22,z=59,dx=4,dy=4,dz=4] ~~~ kill @s
# (由于此关卡特殊性，绳枪不予清除) execute @e[name=level,scores={background=300..309}] ~~~ execute @a[x=-191,y=-22,z=27,dx=4,dy=4,dz=4,type=aw:hookshot] ~~~ kill @s
execute @e[name=level,scores={background=300..319}] ~~~ execute @e[family=hookshot,x=-174,y=-22,z=8,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=300..329}] ~~~ execute @e[family=hookshot,x=-165,y=-22,z=27,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=300..339}] ~~~ execute @e[family=hookshot,x=-173,y=-15,z=21,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=300..349}] ~~~ execute @e[family=hookshot,x=-175,y=16,z=-10,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=400..409}] ~~~ execute @e[family=hookshot,x=-169,y=16,z=-22,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=400..419}] ~~~ execute @e[family=hookshot,x=-158,y=6,z=-2,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=400..429}] ~~~ execute @e[family=hookshot,x=-158,y=-13,z=11,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=400..439}] ~~~ execute @e[family=hookshot,x=-142,y=-32,z=4,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=400..449}] ~~~ execute @e[family=hookshot,x=-97,y=-32,z=-9,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=500..509}] ~~~ execute @e[family=hookshot,x=-82,y=-32,z=-30,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=600..609}] ~~~ execute @e[family=hookshot,x=-77,y=-32,z=-51,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=600..619}] ~~~ execute @e[family=hookshot,x=-82,y=-20,z=-47,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=600..629}] ~~~ execute @e[family=hookshot,x=-77,y=-38,z=-16,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=600..639}] ~~~ execute @e[family=hookshot,x=-77,y=-40,z=21,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=700..719}] ~~~ execute @e[family=hookshot,x=-164,y=-19,z=108,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=700..729}] ~~~ execute @e[family=hookshot,x=-197,y=-19,z=95,dx=4,dy=4,dz=4] ~~~ kill @s
execute @e[name=level,scores={background=700..739}] ~~~ execute @e[family=hookshot,x=-228,y=-19,z=97,dx=4,dy=4,dz=4] ~~~ kill @s

## 移除多余的intoLevel标签
tag @a remove intoLevel