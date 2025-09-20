# ===== 剧情：张宇 =====
# 交互后启用时间线流逝

## 黑屏
execute if score timeline time matches 50 run camera @a fade time 1 2 1
## 剧情结束
execute if score timeline time matches 100 run function aw/levels/end/stage3/events/back_to_stage2
