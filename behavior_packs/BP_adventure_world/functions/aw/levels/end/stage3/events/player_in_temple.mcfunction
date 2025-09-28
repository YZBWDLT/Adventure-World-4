# ===== 玩家进入神殿 =====

# 如果选择全流程，则触发开始全流程
execute if score level settings matches 0 run function aw/levels/end/stage3/events/start_open

# 否则，触发开始单关卡（stage4）
execute if score level settings matches !0 run function aw/levels/end/stage4/start

# 其他内容
## 移除 stage4 的按钮
fill -11 1 85 -20 2 87 air
