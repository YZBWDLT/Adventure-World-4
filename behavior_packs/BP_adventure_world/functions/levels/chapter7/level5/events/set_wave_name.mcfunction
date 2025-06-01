# ===== 打印本关的波潮信息 =====
# 符号具体含义请见函数lib/modify_data/levels/wave_(?)。

# --- 初始化 ---
## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately

# --- 设置名称 ---

execute if score wave data matches 1 run summon aw:marker ~~~~~ aw:set_wave_name "§b⚃§e⚀"
execute if score wave data matches 2 run summon aw:marker ~~~~~ aw:set_wave_name "§a⚅§b⚂"
