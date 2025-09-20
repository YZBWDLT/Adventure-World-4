# ===== 玩家进入神殿 =====

# 如果选择全流程，则触发开始全流程
execute if score temp.level settings matches 0 run function aw/levels/end/stage3/events/start_open

# 否则，触发开始单关卡
execute if score temp.level settings matches !0 run function aw/levels/end/stage3/events/start_single_level

# 其他内容
## 移除 stage4 的按钮
fill -11 1 85 -20 2 87 air
