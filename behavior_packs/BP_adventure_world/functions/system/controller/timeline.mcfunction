# ===== 时间线控制器 =====
# 该函数仅当时间线启用后执行

# --- 需要启用的时间线文件 ---

## 开幕&村庄剧情
execute if score chapter data matches 0 run function levels/open/timeline
## 正式关卡
execute if score chapter data matches 1 run function levels/chapter1/timeline
execute if score chapter data matches 2 run function levels/chapter2/timeline
execute if score chapter data matches 3 run function levels/chapter3/timeline
execute if score chapter data matches 4 run function levels/chapter4/timeline
execute if score chapter data matches 5 run function levels/chapter5/timeline
execute if score chapter data matches 6 run function levels/chapter6/timeline
execute if score chapter data matches 7 run function levels/chapter7/timeline
## 结尾
execute if score chapter data matches 10 run function levels/end/timeline
