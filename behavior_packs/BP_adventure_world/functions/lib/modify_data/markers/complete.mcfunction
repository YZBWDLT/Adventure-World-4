# ===== 标记操作 =====
# 在游戏成功时进行的标记操作：移除上关标记，并新增下关标记。
# 调用此方法时：需修饰执行位置为下关标记位置（execute positioned (下关标记位置)）

event entity @e[has_property={aw:level=prev}] aw:remove_immediately
event entity @e[has_property={aw:level=kill}] aw:remove_immediately
summon aw:marker ~~~~~ aw:set_next_level
