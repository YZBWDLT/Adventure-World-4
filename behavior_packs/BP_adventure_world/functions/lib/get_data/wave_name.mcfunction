# ===== 将波潮信息打印到 aw:marker 上 =====
# 将波潮信息打印为 aw:marker 的名称。
# 调用此方法时：需修饰执行位置为(-83,1,-2)（execute positioned -83 1 -2）。
# 备注：符号标记
# ⚀ - BOSS预告 | ⚁ - 普通波预告
# ⚂ - BOSS进行中 | ⚃ - 普通波进行中
# ⚄ - BOSS结束 | ⚅ - 普通波结束

# --- 初始化 ---
## 将原有的实体移除
event entity @e[has_property={aw:name="wave"}] aw:remove_immediately
## 程序结束标记
scoreboard players set temp.breakFlag data 0

# --- 非常规关卡 ---
# 下面的函数应返回data.temp.breakFlag=1。
execute if score chapter data matches 2 if score level data matches 3 run function levels/chapter2/level3/events/set_wave_name
execute if score chapter data matches 3 if score level data matches 4 run function levels/chapter3/level4/events/set_wave_name
execute if score chapter data matches 7 if score level data matches 4 run function levels/chapter7/level4/events/set_wave_name
execute if score chapter data matches 7 if score level data matches 5 run function levels/chapter7/level5/events/set_wave_name

# --- 常规关卡 ---
# 如果下面的内容被 break 掉，则不执行，否则进行检测
execute if score temp.breakFlag data matches 0 run function lib/modify_data/levels/set_wave_name

# --- 程序结束后的变量设置 ---
## 移除临时变量
scoreboard players reset temp.breakFlag data
