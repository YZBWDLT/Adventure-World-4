tag @s add hitBlockOrEntity
execute @s ~~~ detect ~0.1~~ planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~-0.1~~ planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~~~0.1 planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~~~-0.1 planks -1 tag @s add hitPlanks
execute @s[tag=hitPlanks] ~~~ detect ~0.1~~ planks -1 tp @p[tag=hookshotThrower] ~-1~-1~
execute @s[tag=hitPlanks] ~~~ detect ~-0.1~~ planks -1 tp @p[tag=hookshotThrower] ~1~-1~
execute @s[tag=hitPlanks] ~~~ detect ~~~0.1 planks -1 tp @p[tag=hookshotThrower] ~~-1~-1
execute @s[tag=hitPlanks] ~~~ detect ~~~-0.1 planks -1 tp @p[tag=hookshotThrower] ~~-1~1

execute @s ~~~ detect ~0.1~~ crimson_planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~-0.1~~ crimson_planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~~~0.1 crimson_planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~~~-0.1 crimson_planks -1 tag @s add hitPlanks
execute @s[tag=hitPlanks] ~~~ detect ~0.1~~ crimson_planks -1 tp @p[tag=hookshotThrower] ~-1~-1~
execute @s[tag=hitPlanks] ~~~ detect ~-0.1~~ crimson_planks -1 tp @p[tag=hookshotThrower] ~1~-1~
execute @s[tag=hitPlanks] ~~~ detect ~~~0.1 crimson_planks -1 tp @p[tag=hookshotThrower] ~~-1~-1
execute @s[tag=hitPlanks] ~~~ detect ~~~-0.1 crimson_planks -1 tp @p[tag=hookshotThrower] ~~-1~1

execute @s ~~~ detect ~0.1~~ warped_planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~-0.1~~ warped_planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~~~0.1 warped_planks -1 tag @s add hitPlanks
execute @s ~~~ detect ~~~-0.1 warped_planks -1 tag @s add hitPlanks
execute @s[tag=hitPlanks] ~~~ detect ~0.1~~ warped_planks -1 tp @p[tag=hookshotThrower] ~-1~-1~
execute @s[tag=hitPlanks] ~~~ detect ~-0.1~~ warped_planks -1 tp @p[tag=hookshotThrower] ~1~-1~
execute @s[tag=hitPlanks] ~~~ detect ~~~0.1 warped_planks -1 tp @p[tag=hookshotThrower] ~~-1~-1
execute @s[tag=hitPlanks] ~~~ detect ~~~-0.1 warped_planks -1 tp @p[tag=hookshotThrower] ~~-1~1