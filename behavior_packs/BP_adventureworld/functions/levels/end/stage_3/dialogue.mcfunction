# ===== 对话 =====

# --- 主对话 ---
execute @e[name=dialogue,scores={active=1,time=140}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7云儿，对了，之前红石神殿的事......"}]}
execute @e[name=dialogue,scores={active=1,time=220}] ~~~ tellraw @a {"rawtext":[{"translate":"* §c米云溪： §7别问我，你自己去你家楼下看嘛！我要说的都在那儿了哦。"}]}
execute @e[name=dialogue,scores={active=1,time=300}] ~~~ tellraw @a {"rawtext":[{"translate":"* §f林乐（我）： §7好吧......qwq"}]}

execute @e[name=dialogue,scores={active=1,time=301}] ~~~ function lib/states/dialogue/disable

# --- 重开对话 ---
execute @e[name=dialogue,scores={active=3,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §e张宇： §7你是要再来一次试炼吗？"}]}
execute @e[name=dialogue,scores={active=3,time=2}] ~~~ function lib/states/dialogue/disable

# --- 作者对话 ---

## 量筒 | 4
execute @e[name=dialogue,scores={active=4}] ~~~ function levels/end/stage_3/author_dialogues/yzbwdlt

## 巴豆 | 5
execute @e[name=dialogue,scores={active=5}] ~~~ function levels/end/stage_3/author_dialogues/andy7343

## 绿叶 | 6
execute @e[name=dialogue,scores={active=6}] ~~~ function levels/end/stage_3/author_dialogues/greeleaf

## 文雨 | 7
execute @e[name=dialogue,scores={active=7}] ~~~ function levels/end/stage_3/author_dialogues/kriswenyu

## 鸽子 | 8
execute @e[name=dialogue,scores={active=8}] ~~~ function levels/end/stage_3/author_dialogues/pigeonki

## 小鼠 | 9
execute @e[name=dialogue,scores={active=9}] ~~~ function levels/end/stage_3/author_dialogues/xiaoshu512

## 比翼鸟 | 10
execute @e[name=dialogue,scores={active=10}] ~~~ function levels/end/stage_3/author_dialogues/kianakasnala947

## 帕 | 11
execute @e[name=dialogue,scores={active=11,time=1}] ~~~ function levels/end/stage_3/author_dialogues/hfpa0117
execute @e[name=dialogue,scores={active=11,time=2..}] ~~~ function lib/states/dialogue/disable

## 星辰 | 12
execute @e[name=dialogue,scores={active=12,time=1}] ~~~ function levels/end/stage_3/author_dialogues/xc13599305
execute @e[name=dialogue,scores={active=12,time=2..}] ~~~ function lib/states/dialogue/disable

## 南瓜汁 | 13
execute @e[name=dialogue,scores={active=13,time=1}] ~~~ function levels/end/stage_3/author_dialogues/pumpkinjui
execute @e[name=dialogue,scores={active=13,time=2..}] ~~~ function lib/states/dialogue/disable

## 蒙德人 | 14
execute @e[name=dialogue,scores={active=14,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a蒙德人（Tuffy2020China）： §7哎呦？不错哦！居然通关了？汗流浃背了吧，牢弟！小…猫？（喜欢吗？）喜欢就快催量老师和大佬们更新地图吧！"}]}
execute @e[name=dialogue,scores={active=14,time=2..}] ~~~ function lib/states/dialogue/disable

## 火卫三 | 15
execute @e[name=dialogue,scores={active=15,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a火卫三（AnimalChalk2526）： §7yeeee~"}]}
execute @e[name=dialogue,scores={active=15,time=2..}] ~~~ function lib/states/dialogue/disable

## 基岩 | 16
execute @e[name=dialogue,scores={active=16,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a基岩（Ender5207541）： §7作业写完了吗？（doge）"}]}
execute @e[name=dialogue,scores={active=16,time=2..}] ~~~ function lib/states/dialogue/disable

## 决心 | 17
execute @e[name=dialogue,scores={active=17,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a决心（RustyAbyss29193）： §7恭喜通关，充满决心的冒险家。"}]}
execute @e[name=dialogue,scores={active=17,time=2..}] ~~~ function lib/states/dialogue/disable

## 千里 | 18
execute @e[name=dialogue,scores={active=18,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a千里（EnderLife5409）： §7你的经历会被记载在某张羊皮纸上，其中所记载的一切将永远不会重现，但在世界另一角，溺尸嘶吼着又拾起了三叉戟，另一个冒险世界，风云再起！"}]}
execute @e[name=dialogue,scores={active=18,time=2..}] ~~~ function lib/states/dialogue/disable

## 水晶哥 | 19
execute @e[name=dialogue,scores={active=19,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a水晶哥（OneKitty710926）： §7* 保持你的决心......"}]}
execute @e[name=dialogue,scores={active=19,time=2..}] ~~~ function lib/states/dialogue/disable

## 风暴 | 20
execute @e[name=dialogue,scores={active=20,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a风暴（FoxLanMo）： §7可恶，量筒地图怎么这么难……哼哼哼啊啊啊啊啊啊啊啊（尖叫）（扭曲）（阴暗地爬行）§8[原文如此]"}]}
execute @e[name=dialogue,scores={active=20,time=2..}] ~~~ function lib/states/dialogue/disable

## 宽判 | 21
execute @e[name=dialogue,scores={active=21,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a宽判（kuanpan 9527）： §7我PVE真是太菜了。"}]}
execute @e[name=dialogue,scores={active=21,time=2..}] ~~~ function lib/states/dialogue/disable

## 龙龙 | 22
execute @e[name=dialogue,scores={active=22,time=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a龙龙（longlongxiaotao）： §7希望你能在本地图取得好成绩，找到属于你的那一份快乐吧！！！"}]}
execute @e[name=dialogue,scores={active=22,time=2..}] ~~~ function lib/states/dialogue/disable
