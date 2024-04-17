# ===== 在进入关卡之前，持续清除水 =====
# 在3-2之前，持续清除3-2的水；在3-4之前，持续清除3-4的水

execute @e[name=gameId,scores={data=301..311}] ~~~ function levels/chapter3/3_2/water_clear
execute @e[name=gameId,scores={data=301..331}] ~~~ function levels/chapter3/3_4/water_clear