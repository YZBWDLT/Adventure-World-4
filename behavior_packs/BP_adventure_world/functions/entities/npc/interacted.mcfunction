# ===== 与 NPC 交互后执行的命令 =====
# 当玩家与 NPC 交互后，执行的命令

# 调用此方法时：
# · 执行者为被交互的 NPC（family=interacted）
# · 执行位置为该 NPC 的位置
# 输出结果：
# ——
# 备注：实体属性含义
# 当 aw:is_author=false 时，aw:npc_type 的对应表：
# 0：韩林清，1：陈琦，2：赵向前，3：李晴，4：米云溪，5：李南，6：张宇，7：田英
# 当 aw:is_author=true 时，aw:npc_type 的对应表：
# 0：量筒，1：巴豆，2：绿叶，3：鸽子，4：文雨，5：南瓜汁，6：小鼠，7：蒙德人，8：火卫三，9：比翼鸟，
# 10：星辰，11：帕，12：基岩，13：烟雨，14：千里，15：水晶哥，16：风暴，17：宽判，18：龙龙

# --- 全情况 ---

## 李南
execute if entity @s[has_property={aw:is_author=false,aw:npc_type=5}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7林乐啊，你从小就喜欢剑术，现在看你真的成为了英雄，我为你感到骄傲。","with":{"rawtext":[{"selector":"@s"}]}}]}
## 韩林清
execute if entity @s[has_property={aw:is_author=false,aw:npc_type=0}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7虽然我还不明白前因后果，但你一定是完成了不得了的大事。","with":{"rawtext":[{"selector":"@s"}]}}]}
## 陈琦
execute if entity @s[has_property={aw:is_author=false,aw:npc_type=1}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7小英雄起床了？早上我看到你两个朋友进村找你了，但你当时还没醒。","with":{"rawtext":[{"selector":"@s"}]}}]}
## 李晴
execute if entity @s[has_property={aw:is_author=false,aw:npc_type=3}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7真没想到，平时朝夕相处的居然是这样一个大人物。","with":{"rawtext":[{"selector":"@s"}]}}]}
## 赵向前
execute if entity @s[has_property={aw:is_author=false,aw:npc_type=2}] run tellraw @p {"rawtext":[{"translate":"* §e%%s： §7今天我要工作，收拾个村庄这么多事，哎呦真干不过来了。","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 村庄对话（开幕第2段，0-2） ---
## 田英
execute if score chapter data matches 0 if score level data matches 2 if entity @s[has_property={aw:is_author=false,aw:npc_type=7}] run tellraw @p {"rawtext":[{"translate":"* §b%%s： §7没听清楚位置？在后山的时间神殿。","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 村庄对话（开幕第3段，0-3） ---
## 田英
execute if score chapter data matches 0 if score level data matches 3 if entity @s[has_property={aw:is_author=false,aw:npc_type=7}] run tellraw @p {"rawtext":[{"translate":"* §b%%s： §7商店的老板要找你，你自己住的村子，肯定知道在哪。","with":{"rawtext":[{"selector":"@s"}]}}]}
## 米云溪
execute if score chapter data matches 0 if score level data matches 3 if entity @s[has_property={aw:is_author=false,aw:npc_type=4}] run tellraw @p {"rawtext":[{"translate":"* §c%%s： §7田英，田英你看这里，我刚刚发现......","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 村庄对话（开幕第4段，0-4） ---
## 田英
execute if score chapter data matches 0 if score level data matches 4 if entity @s[has_property={aw:is_author=false,aw:npc_type=7}] run tellraw @p {"rawtext":[{"translate":"* §b%%s： §7我们的勇气贤者从来不怕困难！","with":{"rawtext":[{"selector":"@s"}]}}]}
## 米云溪
execute if score chapter data matches 0 if score level data matches 4 if entity @s[has_property={aw:is_author=false,aw:npc_type=4}] run tellraw @p {"rawtext":[{"translate":"* §c%%s： §7一定要小心啊，我们在外面等你。","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 村庄对话（结束第3段，10-3） ---
## 田英
execute if score chapter data matches 10 if score level data matches 3 if entity @s[has_property={aw:is_author=false,aw:npc_type=7}] run tellraw @p {"rawtext":[{"translate":"* §b%%s： §7如果你还有点意犹未尽，你可以再去问问张宇老板§8（和他交互）§7。","with":{"rawtext":[{"selector":"@s"}]}}]}
## 米云溪
execute if score chapter data matches 10 if score level data matches 3 if entity @s[has_property={aw:is_author=false,aw:npc_type=4}] run tellraw @p {"rawtext":[{"translate":"* §c%%s： §7我们在你家布置了很多新东西哦！记得去看看。","with":{"rawtext":[{"selector":"@s"}]}}]}
##<!> 张宇
execute if score chapter data matches 10 if score level data matches 3 if entity @s[has_property={aw:is_author=false,aw:npc_type=6}] run say 此处仍需完善！
##<!> 其他作者
execute if score chapter data matches 10 if score level data matches 3 if entity @s[has_property={aw:is_author=true}] run say 此处仍需完善！

# --- 村庄对话（结束第4段，10-4） ---
##<!> 张宇
execute if score chapter data matches 10 if score level data matches 4 if entity @s[has_property={aw:is_author=false,aw:npc_type=6}] run say 此处仍需完善！
