# ===== 为击打到木板的绳枪加上hitPlanks标签 =====
# 为使绳枪能够及时被检测得到，采用1格为检测阈值，0.5是极限阈值

# --- 普通木板 ---
## 侧面
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~ planks -1 scoreboard players set @s temp3 1
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~ planks -1 scoreboard players set @s temp3 2
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~~1 planks -1 scoreboard players set @s temp3 3
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~~-1 planks -1 scoreboard players set @s temp3 4
## 对角
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~1 planks -1 scoreboard players set @s temp3 5
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~-1 planks -1 scoreboard players set @s temp3 6
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~1 planks -1 scoreboard players set @s temp3 7
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~-1 planks -1 scoreboard players set @s temp3 8
## 底面与顶面
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~1~ planks -1 scoreboard players set @s temp3 9
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~-1~ planks -1 scoreboard players set @s temp3 10

# --- 绯红木板 ---
## 侧面
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~ crimson_planks -1 scoreboard players set @s temp3 1
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~ crimson_planks -1 scoreboard players set @s temp3 2
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~~1 crimson_planks -1 scoreboard players set @s temp3 3
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~~-1 crimson_planks -1 scoreboard players set @s temp3 4
## 对角
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~1 crimson_planks -1 scoreboard players set @s temp3 5
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~-1 crimson_planks -1 scoreboard players set @s temp3 6
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~1 crimson_planks -1 scoreboard players set @s temp3 7
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~-1 crimson_planks -1 scoreboard players set @s temp3 8
## 底面与顶面
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~1~ crimson_planks -1 scoreboard players set @s temp3 9
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~-1~ crimson_planks -1 scoreboard players set @s temp3 10

# --- 诡异木板 ---
## 侧面
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~ warped_planks -1 scoreboard players set @s temp3 1
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~ warped_planks -1 scoreboard players set @s temp3 2
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~~1 warped_planks -1 scoreboard players set @s temp3 3
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~~-1 warped_planks -1 scoreboard players set @s temp3 4
## 对角
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~1 warped_planks -1 scoreboard players set @s temp3 5
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~1~~-1 warped_planks -1 scoreboard players set @s temp3 6
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~1 warped_planks -1 scoreboard players set @s temp3 7
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~-1~~-1 warped_planks -1 scoreboard players set @s temp3 8
## 底面与顶面
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~1~ warped_planks -1 scoreboard players set @s temp3 9
execute @e[type=aw:hookshot,scores={temp3=0}] ~~~ detect ~~-1~ warped_planks -1 scoreboard players set @s temp3 10
