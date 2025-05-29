# ===== 完成关卡 =====
# 0-2 | 与田英初次对话

## 调用通用函数 | 下一个检查点和重生点
execute positioned 36 1 -22 run function lib/modify_data/levels/complete_open
## 启用时间线流逝
function lib/modify_data/states/timeline/enable_time_lapse
## 提示玩家可以和 NPC 交互
tellraw @a {"rawtext":[{"translate":"§7小提示：右键NPC可以与他们交互哦！"}]}
