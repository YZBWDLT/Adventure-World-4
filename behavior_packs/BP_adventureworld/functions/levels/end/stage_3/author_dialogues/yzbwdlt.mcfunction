# ===== 量筒对话 =====

execute @e[name=dialogue,scores={time=60}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7感谢你游玩此地图！不知道你对这个地图满不满意呢？"}]}
execute @e[name=dialogue,scores={time=120}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7这张地图耗费了我们巨大的心血，说来有意思，我们本来一开始并没有打算做的这么大，后来东西越塞越多，搞成了这个样子......耗时也是超过了一年qwq"}]}
execute @e[name=dialogue,scores={time=180}] ~~~ execute @e[name=isNetease,scores={data=0}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7遇到问题欢迎来我们的测试群讨论：673941729！最后再次感谢你的游玩~！"}]}
execute @e[name=dialogue,scores={time=180}] ~~~ execute @e[name=isNetease,scores={data=1}] ~~~ tellraw @a {"rawtext":[{"translate":"* §a量筒（YZBWDLT）： §7遇到问题欢迎来我们的测试群讨论：\n673941729\n！最后再次感谢你的游玩~！"}]}

execute @e[name=dialogue,scores={time=200..}] ~~~ tellraw @a {"rawtext":[{"text":"你现在可以移动了！"}]}
execute @e[name=dialogue,scores={time=200..}] ~~~ function lib/states/dialogue/disable
