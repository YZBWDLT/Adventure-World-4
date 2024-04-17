# ===== NPC交互检测器 =====

# --- 获取关卡数 ---
scoreboard players operation @s temp = @e[name=gameId] data

# --- 人物对话 ---

## 田英
execute @s[name="田英",scores={temp=4}] ~~~ tellraw @p {"rawtext":[{"translate":"* §b%%s： §7没听清楚位置？在后山的时间神殿。","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[name="田英",scores={temp=5}] ~~~ tellraw @p {"rawtext":[{"translate":"* §b%%s： §7商店的老板要找你，你自己住的村子，肯定知道在哪。","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[name="田英",scores={temp=8}] ~~~ tellraw @p {"rawtext":[{"translate":"* §b%%s： §7我们的勇气贤者从来不怕困难！","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[name="田英",scores={temp=1003}] ~~~ tellraw @p {"rawtext":[{"translate":"* §b%%s： §7如果你还有点意犹未尽，你可以再去问问张宇老板§8（和他交互）§7。","with":{"rawtext":[{"selector":"@s"}]}}]}

## 米云溪
execute @s[name="米云溪",scores={temp=5}] ~~~ tellraw @p {"rawtext":[{"translate":"* §c%%s： §7田英，田英你看这里，我刚刚发现......","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[name="米云溪",scores={temp=8}] ~~~ tellraw @p {"rawtext":[{"translate":"* §c%%s： §7一定要小心啊，我们在外面等你。","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @s[name="米云溪",scores={temp=1003}] ~~~ tellraw @p {"rawtext":[{"translate":"* §c%%s： §7我们在你家布置了很多新东西哦！记得去看看。","with":{"rawtext":[{"selector":"@s"}]}}]}

## 李南
execute @s[name="李南"] ~~~ tellraw @p {"rawtext":[{"translate":"* §e%%s： §7林乐啊，你从小就喜欢剑术，现在看你真的成为了英雄，我为你感到骄傲。","with":{"rawtext":[{"selector":"@s"}]}}]}

## 韩林清
execute @s[name="韩林清"] ~~~ tellraw @p {"rawtext":[{"translate":"* §e%%s： §7虽然我还不明白前因后果，但你一定是完成了不得了的大事。","with":{"rawtext":[{"selector":"@s"}]}}]}

## 陈琦
execute @s[name="陈琦"] ~~~ tellraw @p {"rawtext":[{"translate":"* §e%%s： §7小英雄起床了？早上我看到你两个朋友进村找你了，但你当时还没醒。","with":{"rawtext":[{"selector":"@s"}]}}]}

## 李晴
execute @s[name="李晴"] ~~~ tellraw @p {"rawtext":[{"translate":"* §e%%s： §7真没想到，平时朝夕相处的居然是这样一个大人物。","with":{"rawtext":[{"selector":"@s"}]}}]}

## 赵向前
execute @s[name="赵向前"] ~~~ tellraw @p {"rawtext":[{"translate":"* §e%%s： §7今天我要工作，收拾个村庄这么多事，哎呦真干不过来了。","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 触发事件 ---

## 当玩家在关卡ID为1003~1004时与张宇对话，令张宇获取interacted标签
execute @s[name="张宇",scores={temp=1003..1004}] ~~~ tag @s add interacted

# --- 重置对话状态 ---
event entity @s interacted_reset