# ===== 剧情模式的开幕剧情部分 =====

execute @e[name=dialogue,scores={time=40}] ~~~ tellraw @a {"rawtext":[{"text":"* 很久很久以前，一个强大的王国封印了一个恶魔。"}]}
execute @e[name=dialogue,scores={time=140}] ~~~ tellraw @a {"rawtext":[{"text":"* 四位贤者守护着封印，防止恶魔再次降临。"}]}
execute @e[name=dialogue,scores={time=240}] ~~~ tellraw @a {"rawtext":[{"text":"* 就这样，贤者和恶魔都被锁入了永恒的时间，这个故事也逐渐被遗忘。"}]}
execute @e[name=dialogue,scores={time=340}] ~~~ tellraw @a {"rawtext":[{"text":"* 直到......"}]}
execute @e[name=dialogue,scores={time=540}] ~~~ tellraw @a {"rawtext":[{"text":"* 不知多久以后，封印松动，贤者和恶魔都开始苏醒。"}]}
execute @e[name=dialogue,scores={time=640}] ~~~ tellraw @a {"rawtext":[{"text":"* 空间贤者最先离开封印，独自破坏了恶魔的法力之源。"}]}
execute @e[name=dialogue,scores={time=740}] ~~~ tellraw @a {"rawtext":[{"text":"* 其余贤者也接连觉醒，最终成功消灭了恶魔。"}]}
execute @e[name=dialogue,scores={time=840}] ~~~ tellraw @a {"rawtext":[{"text":"* 但最初觉醒的空间贤者仍然不知去向，大家正在计划寻找......"}]}

execute @e[name=dialogue,scores={time=900}] ~~~ function lib/states/dialogue/disable
