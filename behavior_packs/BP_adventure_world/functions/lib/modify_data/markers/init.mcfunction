# ===== 标记操作 =====
# 在关卡初始时移除所有关卡标记并初始化一个新的本关标记，以防无关卡标记实体可用。
# 调用此方法时：需修饰执行位置为本关标记实体位置（/execute positioned (本关标记位置)）。

event entity @e[has_property={aw:is_level_marker=true}] aw:remove_immediately
summon aw:marker ~~~~~ aw:set_this_level
