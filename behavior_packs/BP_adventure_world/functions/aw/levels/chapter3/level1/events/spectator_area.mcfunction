# ===== 旁观模式区域检查 =====

tag @s[x=-199,y=-20,z=31,dx=5,dy=1,dz=4] add inArea31
tag @s[x=-193,y=-20,z=24,dx=5,dy=1,dz=11] add inArea31
execute if entity @s[tag=!inArea31] positioned -188 -20 29 run function aw/lib/modify_data/out_of_border
tag @s remove inArea31
