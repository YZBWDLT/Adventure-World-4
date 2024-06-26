# ===== 获取位置信息 =====
# 利用该函数为执行者在position记分板上赋值

## --- 其它不合法区域 ---
### 设为-1
scoreboard players set @s position -1

## --- 开始游戏区域 ---
scoreboard players set @s[x=33,y=20,z=80,dx=22,dy=24,dz=57] position 1
scoreboard players set @s[x=-96,y=0,z=-16,dx=4,dy=4,dz=4] position 2

## --- 第一章 ---
### 先判断玩家是否在第1章的入口及过道部分
scoreboard players set @s[x=-145,y=0,z=-8,dx=38,dy=23,dz=58] position 10
### 1-1 | 有两部分，不放在一个长方体里是因为和1-3的区域冲突
scoreboard players set @s[x=-127,y=-1,z=15,dx=20,dy=8,dz=16] position 11
scoreboard players set @s[x=-119,y=8,z=20,dx=4,dy=4,dz=4] position 11
### 1-2
scoreboard players set @s[x=-137,y=4,z=51,dx=19,dy=10,dz=14] position 12
### 1-3 | 有两部分，不放在一个长方体里是因为和过道区域冲突
scoreboard players set @s[x=-138,y=10,z=16,dx=16,dy=13,dz=20] position 13
scoreboard players set @s[x=-143,y=17,z=24,dx=4,dy=4,dz=4] position 13

## --- 第二章 ---
### 过道判断 | 第2章的结构适合将过道分离判断，而不是在一个区域内统一判断
### 1和2的过道
scoreboard players set @s[x=-106,y=17,z=24,dx=25,dy=4,dz=4] position 10
### 2-X过道
scoreboard players set @s[x=-80,y=11,z=21,dx=10,dy=17,dz=37] position 20
scoreboard players set @s[x=-70,y=-1,z=63,dx=14,dy=26,dz=10] position 20
scoreboard players set @s[x=-141,y=-22,z=53,dx=37,dy=12,dz=17] position 20
scoreboard players set @s[x=-175,y=-22,z=52,dx=8,dy=4,dz=16] position 20
### 2-1
scoreboard players set @s[x=-84,y=17,z=59,dx=14,dy=7,dz=12] position 21
### 2-2
scoreboard players set @s[x=-103,y=-18,z=57,dx=32,dy=29,dz=25] position 22
### 2-3
scoreboard players set @s[x=-166,y=-22,z=44,dx=24,dy=11,dz=31] position 23

## --- 第三章 ---
### 3-0
scoreboard players set @s[x=-200,y=-22,z=13,dx=31,dy=15,dz=20] position 30
scoreboard players set @s[x=-168,y=-21,z=18,dx=8,dy=11,dz=14] position 30
### 2和3的过道 | 写在3-0的后面是因为上面第一行代表的区域包括了一小部分的过道区域
scoreboard players set @s[x=-175,y=-22,z=32,dx=4,dy=4,dz=19] position 20
### 3-1
scoreboard players set @s[x=-204,y=-21,z=30,dx=17,dy=7,dz=11] position 31
scoreboard players set @s[x=-194,y=-21,z=23,dx=7,dy=6,dz=6] position 31
### 3-2
scoreboard players set @s[x=-192,y=-22,z=-2,dx=23,dy=10,dz=14] position 32
scoreboard players set @s[x=-192,y=-22,z=13,dx=13,dy=10,dz=9] position 32
#### (3-2的圆弧部分 这一章的建筑都堆在一起，真的很难区分。。。)
scoreboard players set @s[x=-178,y=-22,z=13,dx=2,dy=10,dz=1] position 32
scoreboard players set @s[x=-178,y=-22,z=15,dx=0,dy=10,dz=0] position 32
#### (3-2的重生点部分，有一小部分没有囊括在前两条命令中)
scoreboard players set @s[x=-184,y=-16,z=23,dx=4,dy=4,dz=1] position 32
### 3-3
scoreboard players set @s[x=-175,y=-33,z=21,dx=22,dy=10,dz=16] position 33
scoreboard players set @s[x=-169,y=-22,z=32,dx=13,dy=6,dz=3] position 33
scoreboard players set @s[x=-166,y=-22,z=27,dx=12,dy=6,dz=4] position 33
scoreboard players set @s[x=-160,y=-22,z=22,dx=6,dy=4,dz=4] position 33
scoreboard players set @s[x=-166,y=-15,z=27,dx=6,dy=4,dz=5] position 33

### 3-4
scoreboard players set @s[x=-177,y=-15,z=19,dx=8,dy=39,dz=13] position 34

## --- 第四章 ---
### 4-0
scoreboard players set @s[x=-182,y=6,z=-30,dx=31,dy=18,dz=27] position 40
scoreboard players set @s[x=-163,y=-13,z=16,dx=13,dy=29,dz=9] position 40
scoreboard players set @s[x=-163,y=-32,z=1,dx=20,dy=14,dz=10] position 40
### 3和4的过道 | 写在4-0的后面是因为上面第一行代表的区域包括了一小部分的过道区域
scoreboard players set @s[x=-175,y=16,z=-6,dx=4,dy=4,dz=24] position 30
### 4-1
scoreboard players set @s[x=-169,y=11,z=-30,dx=17,dy=14,dz=15] position 41
scoreboard players set @s[x=-170,y=17,z=-17,dx=0,dy=1,dz=0] position 41
### 4-2
scoreboard players set @s[x=-168,y=7,z=-2,dx=22,dy=14,dz=17] position 42
### 4-3
scoreboard players set @s[x=-166,y=-17,z=-6,dx=23,dy=22,dz=21] position 43
#### 4-2的这部分写在4-3后面是因为4-2和4-3有重叠部分
scoreboard players set @s[x=-163,y=0,z=4,dx=0,dy=6,dz=0] position 42
scoreboard players set @s[x=-151,y=1,z=5,dx=0,dy=5,dz=0] position 42
### 4-4
scoreboard players set @s[x=-142,y=-36,z=-7,dx=24,dy=21,dz=26] position 44
scoreboard players set @s[x=-146,y=-23,z=5,dx=3,dy=2,dz=2] position 44

## --- 第五章 ---
### 4和5的过道
scoreboard players set @s[x=-117,y=-32,z=-4,dx=24,dy=4,dz=13] position 40
### 5-0
scoreboard players set @s[x=-103,y=-31,z=-21,dx=16,dy=12,dz=16] position 50

## --- 第六章 ---
### 5和6的过道
scoreboard players set @s[x=-97,y=-32,z=-30,dx=14,dy=4,dz=8] position 50
### 6-0
scoreboard players set @s[x=-82,y=-38,z=-44,dx=17,dy=22,dz=27] position 60
scoreboard players set @s[x=-88,y=-32,z=-65,dx=10,dy=16,dz=17] position 60
scoreboard players set @s[x=-76,y=-39,z=8,dx=2,dy=2,dz=12] position 60
### 6-1
scoreboard players set @s[x=-81,y=-32,z=-65,dx=16,dy=9,dz=18] position 61
scoreboard players set @s[x=-83,y=-32,z=-55,dx=1,dy=8,dz=8] position 61
### 6-2
scoreboard players set @s[x=-84,y=-22,z=-47,dx=14,dy=15,dz=16] position 62
scoreboard players set @s[x=-80,y=-11,z=-32,dx=3,dy=2,dz=4] position 62
### 6-3
scoreboard players set @s[x=-82,y=-40,z=-16,dx=14,dy=9,dz=23] position 63
scoreboard players set @s[x=-83,y=-34,z=-17,dx=2,dy=2,dz=2] position 63
### 6-4
scoreboard players set @s[x=-89,y=-41,z=21,dx=28,dy=22,dz=28] position 64

## --- 第七章 ---
### 7-0
scoreboard players set @s[x=-89,y=-41,z=83,dx=4,dy=4,dz=4] position 68
scoreboard players set @s[x=-104,y=-41,z=88,dx=34,dy=42,dz=34] position 69
### 7-1
scoreboard players set @s[x=-149,y=-20,z=93,dx=38,dy=15,dz=24] position 71
scoreboard players set @s[x=-150,y=-20,z=107,dx=0,dy=15,dz=4] position 71
### 7-2
scoreboard players set @s[x=-186,y=-19,z=89,dx=29,dy=24,dz=30] position 72
### 7-3
scoreboard players set @s[x=-218,y=-19,z=83,dx=28,dy=23,dz=33] position 73
### 7-4
scoreboard players set @s[x=-252,y=-30,z=80,dx=33,dy=31,dz=37] position 74
### 7-5
scoreboard players set @s[x=-246,y=-55,z=23,dx=42,dy=34,dz=42] position 75

### 过道区域 | 因为和7-2有冲突，所以写到后面以保证过道区域优先认为70
scoreboard players set @s[x=-159,y=-19,z=99,dx=9,dy=4,dz=13] position 70
scoreboard players set @s[x=-192,y=-18,z=96,dx=8,dy=2,dz=2] position 70
scoreboard players set @s[x=-223,y=-18,z=98,dx=6,dy=2,dz=2] position 70
scoreboard players set @s[x=-236,y=-64,z=96,dx=4,dy=34,dz=4] position 70
scoreboard players set @s[x=-226,y=-20,z=43,dx=2,dy=37,dz=2] position 70