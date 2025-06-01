# ===== 将波潮信息打印到 aw:marker 上 =====
# 将波潮信息打印为 aw:marker 的名称。适用于第 4 波。
# 调用此方法时：需修饰执行位置为(-83,1,-2)（execute positioned -83 1 -2）。
# 备注：符号标记
# ⚀ - BOSS预告 | ⚁ - 普通波预告
# ⚂ - BOSS进行中 | ⚃ - 普通波进行中
# ⚄ - BOSS结束 | ⚅ - 普通波结束

# --- 初始化 ---
## 将原有的实体移除
event entity @e[has_property={aw:marker_type="name",aw:name="wave"}] aw:remove_immediately

# --- 设置名称 ---

## 最大波潮为 4 波时
execute if score maxWave data matches 4 run summon aw:marker ~~~~~ aw:set_wave_name "§a⚅§a⚅§a⚅§b⚃"
## 最大波潮为 5 波时
execute if score maxWave data matches 5 run summon aw:marker ~~~~~ aw:set_wave_name "§a⚅§a⚅§a⚅§b⚃§e⚁"
