# ===== 完成关卡 =====
# 0-1 | 醒来
# （备注：纯剧情关卡下，完成剧情即为完成关卡）

# --- 变量设置 ---
## 设置关卡状态为已完成
scoreboard players set levelCompleted data 1
## 创建 nextLevel | 下一关检测点
execute positioned -43 1 -34 run function lib/modify_data/markers/complete
## 禁用时间线流逝
function lib/modify_data/states/timeline/disable_time_lapse
