# ===== 旁观模式区域检查 =====

tag @s[x=-161.0,y=-20.0,z=54.0,dx=15,dy=1,dz=15] add inArea23
tag @s[x=-158.0,y=-18.0,z=57.0,dx=9,dy=4,dz=9] add inArea23
tag @s[x=-160.0,y=-20.0,z=70.0,dx=12,dy=1,dz=1] add inArea23
tag @s[x=-157.0,y=-20.0,z=72.0,dx=6,dy=1,dz=0] add inArea23
tag @s[x=-145.0,y=-20.0,z=54.0,dx=1,dy=1,dz=13] add inArea23
tag @s[x=-143.0,y=-20.0,z=58.0,dx=0,dy=1,dz=6] add inArea23
tag @s[x=-160.0,y=-20.0,z=51.0,dx=12,dy=1,dz=2] add inArea23
tag @s[x=-157.0,y=-20.0,z=50.0,dx=6,dy=1,dz=0] add inArea23
tag @s[x=-164.0,y=-20.0,z=55.0,dx=2,dy=1,dz=12] add inArea23
tag @s[x=-165.0,y=-20.0,z=58.0,dx=0,dy=1,dz=6] add inArea23
execute if entity @s[tag=!inArea23] run function lib/modify_data/out_of_border
tag @s remove inArea23
