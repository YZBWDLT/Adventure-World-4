# ===== 在进入关卡之前，持续清除水 =====
# 在3-2之前，持续清除3-2的水；在3-4之前，持续清除3-4的水

execute if score chapter data matches 3 if score level data matches 0..1 run function aw/levels/chapter3/3_2/water_clear
execute if score chapter data matches 3 if score level data matches 0..1 run function aw/levels/chapter3/3_4/water_clear
