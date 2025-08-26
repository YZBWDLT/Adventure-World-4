# ===== 与 NPC 交互后执行的命令 =====
# 当玩家与 NPC 交互后，执行的命令

# 调用此方法时：
# · 执行者为被交互的 NPC（family=interacted）
# · 执行位置为该 NPC 的位置
# 输出结果：
# ——
# 备注：实体属性含义
# 当 aw:is_author=false 时，aw:skin 的对应表：
# 0：韩林清，1：陈琦，2：赵向前，3：李晴，4：米云溪，5：李南，6：张宇，7：田英
# 当 aw:is_author=true 时，aw:skin 的对应表：
# 0：量筒，1：巴豆，2：绿叶，3：鸽子，4：文雨，5：南瓜汁，6：小鼠，7：蒙德人，8：火卫三，9：比翼鸟，
# 10：星辰，11：帕，12：基岩，13：烟雨，14：千里，15：水晶哥，16：风暴，17：宽判，18：龙龙

# --- 全情况 ---
    ## 播放动画
        execute if entity @s[has_property={aw:is_author=false,aw:skin=0..3}] run event entity @s[has_property={aw:animation="none"}] aw:animation_speak
        execute if entity @s[has_property={aw:is_author=false,aw:skin=5}] run event entity @s[has_property={aw:animation="none"}] aw:animation_speak
    ## 李南
        execute if entity @s[has_property={aw:is_author=false,aw:skin=5}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7林乐啊，你从小就喜欢剑术，现在看你真的成为了英雄，我为你感到骄傲。","with":{"rawtext":[{"selector":"@s"}]}}]}
    ## 韩林清
        execute if entity @s[has_property={aw:is_author=false,aw:skin=0}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7虽然我还不明白前因后果，但你一定是完成了不得了的大事。","with":{"rawtext":[{"selector":"@s"}]}}]}
    ## 陈琦
        execute if entity @s[has_property={aw:is_author=false,aw:skin=1}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7小英雄起床了？早上我看到你两个朋友进村找你了，但你当时还没醒。","with":{"rawtext":[{"selector":"@s"}]}}]}
    ## 李晴
        execute if entity @s[has_property={aw:is_author=false,aw:skin=3}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7真没想到，平时朝夕相处的居然是这样一个大人物。","with":{"rawtext":[{"selector":"@s"}]}}]}
    ## 赵向前
        execute if entity @s[has_property={aw:is_author=false,aw:skin=2}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7今天我要工作，收拾个村庄这么多事，哎呦真干不过来了。","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 关卡内对话 ---
    ## 村庄对话（0-X）
        execute if score chapter data matches 0 if score level data matches 2 run function aw/levels/open/stage2/events/interact_with_npc
        execute if score chapter data matches 0 if score level data matches 3 run function aw/levels/open/stage3/events/interact_with_npc
        execute if score chapter data matches 0 if score level data matches 4 run function aw/levels/open/stage4/events/interact_with_npc
    ## 结束对话（10-X）
        execute if score chapter data matches 10 if score level data matches 2 run function aw/levels/end/stage2/events/interact_with_npc
        execute if score chapter data matches 10 if score level data matches 3 run function aw/levels/end/stage3/events/interact_with_npc
